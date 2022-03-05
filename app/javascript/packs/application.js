// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import Swal from 'sweetalert2'

// Internal imports, e.g:
import { initChatroomCable } from '../channels/chatroom_channel';

document.addEventListener('turbolinks:load', () => {

  // Call your functions here, e.g:
  // initSelect2();
  const reservationBtn = document.getElementById("reservation-btn");
  if (reservationBtn) {
    console.log("reservation available");
    reservationBtn.addEventListener("click", (event) => {
      event.preventDefault();
      Swal.fire({
        title: 'Confirm Chair',
        text: 'Do you want to continue',
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
              "You're all set! You'll receive an email from your institution confirming your chair and further details on your chosen course. To manage your course, head over to your profile page",
              'success'
            )
            // window.location.href = `/courses/${courseId}`;
          });
        }
      })
    });
  }

  initChatroomCable();

});
