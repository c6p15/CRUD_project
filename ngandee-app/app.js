// Import required modules
const express = require('express');
const mysql = require('mysql2');
const ejs = require('ejs');
const bodyParser = require('body-parser');
const methodOverride = require('method-override');

const app = express();
app.use(express.static('public'));
// Configure middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(methodOverride('_method'));

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'ngandee_test',
  connectionLimit: 10,
});

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  const sqlQuery = 'SELECT * FROM job';
  pool.query(sqlQuery, (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred.');
      return;
    }
    res.render('index', { data: results });
  });
});

app.get('/add', (req, res) => {
  res.render('add');
});

app.get('/moreinfo/:JID', (req,res) => {
  const { JID } = req.params;
  const sqlQuery = 'SELECT * FROM job WHERE JID = ?';
  pool.query(sqlQuery, [JID],(err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred.' + err.message);
      return;
    }
    res.render('moreinfo', { JID, data: results[0]});
  });
})

app.post('/add', (req, res) => {
  const { JShopname,JName, Salary, Jobtype, JshopAddr, Jtime, Qulification, JDetail } = req.body;
  const sqlQuery = 'INSERT INTO job (JShopname, JName, Salary, Jobtype, JshopAddr, Jtime, Qulification, JDetail) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
  pool.execute(sqlQuery, [JShopname, JName, Salary, Jobtype, JshopAddr, Jtime, Qulification, JDetail], (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred.');
      return;
    }
    res.redirect('/');
  });
});

app.get('/edit/:JID', (req, res) => {
  const { JID } = req.params; 
  const sqlQuery = 'SELECT * FROM job WHERE JID = ?';
  pool.query(sqlQuery, [JID], (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred.' + err.message);
      return;
    }
    res.render('edit', { JID, data: results[0]});
  });
});

app.post('/edit/:JID', (req, res) => {
  const { JID } = req.params;
  const { JShopname,JName, Salary, Jobtype, JshopAddr, Jtime, Qulification, JDetail } = req.body;
  const sqlQuery = 'UPDATE job SET JShopname = ?, JName = ?, Salary = ?, Jobtype = ?, Jtime = ?, Qulification = ?, JDetail = ? WHERE JID = ?';
  pool.execute(sqlQuery, [JShopname, JName, Salary, Jobtype, JshopAddr, Jtime, Qulification, JDetail], (err, results) => {
    if (err) {
      console.error('Database query error:', err);
      res.status(500).send('An error occurred: ' + err.message);
      return;
    }
    res.redirect('/');
  });
});

app.delete('/delete/:JID', (req, res) => {
  const { JID } = req.params;
  const sqlQuery = 'DELETE FROM job WHERE JID = ?';
  pool.execute(sqlQuery, [JID], (err, results) => {
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
