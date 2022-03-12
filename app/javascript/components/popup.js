import Swal from 'sweetalert2'


export const successpopup = () => {
    const reservationBtn = document.getElementById("reservation-btn");
  if (reservationBtn) {
    console.log("reservation available");
    reservationBtn.addEventListener("click", (event) => {
      event.preventDefault();
      Swal.fire({
        title: 'Confirm Chair',
        text: 'Do you wish to continue?',
        icon: 'warning',
        showCancelButton: true,
        cancelButtonColor: '#d33',
        confirmButtonColor: '#3085d6',
        confirmButtonText: 'confirm',
      }).then((result) => {
        if (result.isConfirmed) {
          const userId = reservationBtn.dataset.userId;
          const courseId = reservationBtn.dataset.courseId;
          const data = { user_id: userId, course_id: courseId };

          fetch(`/courses/${courseId}/bookings`, {
            method: "POST",
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
          }).then(res => {
            console.log("Request complete! response:", res);
            Swal.fire(
              'Chair confirmed!',
              "You're all set! You'll receive an email from your institution confirming your chair and further details on your chosen course.<br>" + "<br>To manage your courses, head over to your profile page.",
              'success'
            ).then((result) => {
              if (result.value) {
                window.location.reload()
              }
            })
            // window.location.href = `/courses/${courseId}`;
          });
        }
      })
    });
  }
}

export const deletepopup = () => {
  const deleteButtons = document.querySelectorAll(".delete-btn");
    if (deleteButtons) {
    deleteButtons.forEach(deleteButton => {
      console.log(deleteButton)
      deleteButton.addEventListener("click", (event) => {
      event.preventDefault();
      Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to undo this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, remove chair!'
      }).then((result) => {
        if (result.isConfirmed) {
          const bookingId = deleteButton.dataset.bookingId;

          fetch(`/bookings/${bookingId}`, {
            method: "DELETE",
            headers: { 'Content-Type': 'application/json' },
            // body: JSON.stringify(data)
          }).then(res => {

            console.log("Request complete! response:", res);
            Swal.fire(
              'Chair removed!',
              'Your reservation has been cancelled.',
              'success'
            ).then((result) => {
              if (result.value) {
                window.location.reload()
              }
            })

            // window.location.href = `/courses/${courseId}`;
          });
        }
      })
    });
    })
  }
}
