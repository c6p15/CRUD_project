// func.js
function deleteRecord(UID) {
  if (confirm('คุณต้องการจะลบข้อมูลหรือไม่?')) {
    fetch(`/delete/${UID}`, {
      method: 'DELETE',
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.success) {
          // Remove the deleted row from the HTML table
          const row = document.getElementById(`row-${UID}`);
          row.parentNode.removeChild(row);
          showDeletedalert();
          hideDeletealert();
        }
      })
      .catch((error) => {
        console.error('Error:', error);
        showerroralert();
      });
  }
}

function showDeletedalert() {
  const successAlert = document.getElementById('success-alert');
  successAlert.style.display = 'block';
}

function hideDeletealert() {
  setTimeout(() => {
    const successAlert = document.getElementById('success-alert');
    successAlert.style.display = 'none';
  }, 2500);
}

// nodealert.js

function showEditAlert() {
  console.log('showEditAlert function called');
  const editedAlert = document.getElementById('edited-alert');
  editedAlert.style.display = 'block';
  setTimeout(() => {
    hideEditAlert();
  }, 2500);
}

function hideEditAlert() {
  const editedAlert = document.getElementById('edited-alert');
  editedAlert.style.display = 'none';
}
