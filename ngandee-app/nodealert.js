// nodealert.js

function showEditalert() {
  const editedDataAlert = document.getElementById('edited-alert');
  editedDataAlert.style.display = 'block';
}

function hideEditalert() {
  setTimeout(() => {
    const editedDataAlert = document.getElementById('edited-alert');
    editedDataAlert.style.display = 'none';
  }, 2500);
}

function EditData(){
  showEditalert();
  hideEditalert();
}

module.exports = {
  showEditalert,hideEditalert,EditData
};