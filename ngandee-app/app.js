// Import required modules
const express = require('express');
const mysql = require('mysql2');
const ejs = require('ejs');
const bodyParser = require('body-parser');
const methodOverride = require('method-override');


const app = express();
const func = require('./nodealert.js')
app.use(express.static('public'));
// Configure middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(methodOverride('_method'));

// Create a MySQL database connection pool
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'ngandee',
  connectionLimit: 10,
});

// Set the view engine to EJS
app.set('view engine', 'ejs');

// Route to display the list of users
app.get('/', (req, res) => {
  const sqlQuery = 'SELECT * FROM user';
  pool.query(sqlQuery, (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred.');
      return;
    }
    res.render('index', { data: results });
  });
});

// Route to display the user addition form
app.get('/add', (req, res) => {
  res.render('add');
});

// Route to add a new user
app.post('/add', (req, res) => {
  const { SSN, UName, UGender, UBirthDate, UDetail, UAddr, UEmail, UPhoneNo } = req.body;
  const sqlQuery = 'INSERT INTO user (SSN, UName, UGender, UBirthDate, UDetail, UAddr, UEmail, UPhoneNo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
  pool.execute(sqlQuery, [SSN, UName, UGender, UBirthDate, UDetail, UAddr, UEmail, UPhoneNo], (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred.');
      return;
    }
    res.redirect('/');
  });
});

// Route to display the user edit form
app.get('/edit/:UID', (req, res) => {
  const { UID } = req.params;
  const sqlQuery = 'SELECT * FROM user WHERE UID = ?';
  pool.query(sqlQuery, [UID], (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred.' + err.message);
      return;
    }
    const data = results[0];
    const birthDate = new Date(data.UBirthDate);
    const formattedUBirthDate = `${birthDate.getFullYear()}-${(birthDate.getMonth() + 1).toString().padStart(2, '0')}-${birthDate.getDate().toString().padStart(2, '0')}`;
    data.UBirthDate = formattedUBirthDate;
    res.render('edit', { data: data });
  });
});

// Route to update user information
app.post('/edit/:UID', (req, res) => {
  const { UID } = req.params;
  const { SSN, UName, UGender, UBirthDate, UDetail, UAddr, UEmail, UPhoneNo } = req.body;
  const sqlQuery = 'UPDATE user SET SSN = ?, UName = ?, UGender = ?, UBirthDate = ?, UDetail = ?, UAddr = ?, UEmail = ?, UPhoneNo = ? WHERE UID = ?';
  pool.execute(sqlQuery, [SSN, UName, UGender, UBirthDate, UDetail, UAddr, UEmail, UPhoneNo, UID], (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred: ' + err.message);
      return;
    }
    res.redirect('/');
  });
});

// Route to delete a user
app.delete('/delete/:UID', (req, res) => {
  const { UID } = req.params;
  const sqlQuery = 'DELETE FROM user WHERE UID = ?';
  pool.execute(sqlQuery, [UID], (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).json({ success: false, message: 'An error occurred: ' + err.message });
      return;
    }
    res.json({ success: true });
  });
});

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
