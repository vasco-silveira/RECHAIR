import Swal from 'sweetalert2'


export const deletepopup = () => {
    const deleteButtons = document.querySelectorAll("#delete-btn");
    console.log(deleteButtons)
  if (deleteButtons) {
    deleteButtons.forEach(deleteButton => {
      console.log(deleteButton)
      deleteButton.addEventListener("click", (event) => {
      event.preventDefault();
      Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.isConfirmed) {
          const userId = deleteButton.dataset.userId;
          const courseId = deleteButton.dataset.courseId;
          const data = { user_id: userId, course_id: courseId };

          fetch(`/bookings/${courseId}`, {
            method: "DELETE",
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
          }).then(res => {

            console.log("Request complete! response:", res);
            Swal.fire(
              'Deleted!',
              'Your file has been deleted.',
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
