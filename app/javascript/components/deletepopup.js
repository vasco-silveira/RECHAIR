import Swal from 'sweetalert2'


export const deletepopup = () => {
    const deleteBtn = document.getElementById("delete-btn");
    console.log(deleteBtn.dataset)
  if (deleteBtn) {
    deleteBtn.addEventListener("click", (event) => {
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
          const userId = deleteBtn.dataset.userId;
          const courseId = deleteBtn.dataset.courseId;
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
            )
            location.reload()
            // window.location.href = `/courses/${courseId}`;
          });
        }
      })
    });
  }
}
