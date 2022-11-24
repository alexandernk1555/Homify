import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile_toggle"
export default class extends Controller {
  static targets = ["searches", "listings", "hidesearches", "hidelistings"];

  searches() {
    this.searchesTarget.classList.add("chosen")
    this.listingsTarget.classList.remove("chosen")
    this.hidesearchesTarget.classList.remove("hide-element")
    this.hidelistingsTarget.classList.add("hide-element")
  }

  listings() {
    this.listingsTarget.classList.add("chosen")
    this.searchesTarget.classList.remove("chosen")
    this.hidelistingsTarget.classList.remove("hide-element")
    this.hidesearchesTarget.classList.add("hide-element")
  }
}
