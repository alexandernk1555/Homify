import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clear-chat-form"
export default class extends Controller {
  connect() {
    // console.log('hello from clea_chat_form_controller.js');
  }

  resetForm(event) {
    event.target.reset()
  }
}
