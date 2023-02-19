import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clear-chat-form"
export default class extends Controller {
  resetForm(event) {
    event.target.reset()
  }
}
