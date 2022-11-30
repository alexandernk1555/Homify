import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="output"
export default class extends Controller {
  static targets=["outputMax", "outputMin"]

  connect() {
    const rangeInput = document.querySelectorAll(".range-input input"),
    range = document.querySelector(".slider .progress");
    let priceGap = 1000;

    rangeInput.forEach((input) => {
      input.addEventListener("input", (e) => {
        let minVal = parseInt(rangeInput[0].value),
        maxVal = parseInt(rangeInput[1].value);
       
        if (maxVal - minVal < priceGap) {
          if (e.target.className === "range-min") {
            rangeInput[0].value = maxVal - priceGap;
          } else {
            rangeInput[1].value = minVal + priceGap;
          }
        } else {
          range.style.left = (minVal / parseInt(rangeInput[0].max)) * 100 + "%";
          range.style.right = 100 - (maxVal / parseInt(rangeInput[1].max)) * 100 + "%";

          console.log((minVal / parseInt(rangeInput[0].max)) * 100 + "%") 
          console.log(100 - (maxVal / parseInt(rangeInput[1].max)) * 100 + "%") 
          this.outputMinTarget.style.left = (minVal / parseInt(rangeInput[0].max)) * 100 + "%";
          this.outputMaxTarget.style.right = 100 - (maxVal / parseInt(rangeInput[1].max)) * 100 + "%";
          
          this.outputMinTarget.innerText = minVal
          this.outputMaxTarget.innerText = maxVal
        }
      });
    });
  }
}
