import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="output"
export default class extends Controller {
  static targets=["output"]
  change(event) {
    const val = event.target.value
    const min = event.target.min ? event.target.min : 0
    const max = event.target.max ? event.target.max : 0
    const newVal = Number(((val - min)*100)/ (max - min)) 
    console.log(newVal)
    this.outputTarget.innerHTML = val
    this.outputTarget.style.left = `calc(${newVal}% + (${8 - newVal * 0.15}px))`
  }
}
