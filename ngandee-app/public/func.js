// func.js
function deleteRecord(JID) {
  if (confirm('คุณต้องการจะลบข้อมูลหรือไม่?')) {
    fetch(`/delete/${JID}`, {
      method: 'DELETE',
    })
      .then((response) => response.json())
      .then((data) => {
        if (data.success) {
          // Trigger a page reload after a successful delete
          window.location.reload();
        }
      })
      .catch((error) => {
        console.error('Error:', error);
        showErrorAlert();
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

