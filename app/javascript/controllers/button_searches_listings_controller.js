import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="button-searches-listings"
export default class extends Controller {
  static targets = ["searches", "listings"];

  searches() {
    this.searchesTarget.classList.add("chosen")
    this.listingsTarget.classList.remove("chosen")
  }

  listings() {
    this.listingsTarget.classList.add("chosen")
    this.searchesTarget.classList.remove("chosen")
  }
}
