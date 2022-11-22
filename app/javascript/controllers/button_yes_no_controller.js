import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button-yes-no"
export default class extends Controller {
  static targets = ["yes", "no"];

  yes() {
    this.yesTarget.classList.add("chosen")
    this.noTarget.classList.remove("chosen")
  }

  no() {
    this.noTarget.classList.add("chosen")
    this.yesTarget.classList.remove("chosen")
  }
}
