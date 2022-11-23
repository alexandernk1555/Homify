import { Controller } from "@hotwired/stimulus"
import "@swing"


// Connects to data-controller="swipe"
export default class extends Controller {
  connect() {




    document.addEventListener('DOMContentLoaded', function () {
      window.swing = require('swing');
      var stack;

      require 'swing'

      // Prepare the cards in the stack for iteration.
      const cards = [].slice.call(document.querySelectorAll('ul li'));

      // An instance of the Stack is used to attach event listeners.
      const stack = Swing.Stack();

      cards.forEach((targetElement) => {
        // Add card element to the Stack.
        stack.createCard(targetElement);
      });

      // Add event listener for when a card is thrown out of the stack.
      stack.on('throwout', (event) => {
        // e.target Reference to the element that has been thrown out of the stack.
        // e.throwDirection Direction in which the element has been thrown (Direction.LEFT, Direction.RIGHT).

        console.log('Card has been thrown out of the stack.');
        console.log('Throw direction: ' + (event.throwDirection == Direction.LEFT ? 'left' : 'right'));
      });

      // Add event listener for when a card is thrown in the stack, including the spring back into place effect.
      stack.on('throwin', () => {
        console.log('Card has snapped back to the stack.');
      });


      const config = {
        /**
        * Invoked in the event of dragmove.
        * Returns a value between 0 and 1 indicating the completeness of the throw out condition.
        * Ration of the absolute distance from the original card position and element width.
        *
        * @param {number} xOffset Distance from the dragStart.
        * @param {number} yOffset Distance from the dragStart.
        * @param {HTMLElement} element Element.
        * @returns {number}
        */
        throwOutConfidence: (xOffset, yOffset, element) => {
          const xConfidence = Math.min(Math.abs(xOffset) / element.offsetWidth, 1);
          const yConfidence = Math.min(Math.abs(yOffset) / element.offsetHeight, 1);

          return Math.max(xConfidence, yConfidence);
        }
      };

      const stack = stack = Swing.Stack(config);

      // var swing = require("swing")

      // stack = window.swing.Stack();

      // [].forEach.call(document.querySelectorAll('.stack li'), function (targetElement) {
      //   stack.createCard(targetElement);

      //   targetElement.classList.add('in-deck');
      // });

      // stack.on('throwout', function (e) {
      //   console.log(e.target.innerText || e.target.textContent, 'has been thrown out of the stack to the', e.throwDirection, 'direction.');

      //   e.target.classList.remove('in-deck');
      // });

      // stack.on('throwin', function (e) {
      //   console.log(e.target.innerText || e.target.textContent, 'has been thrown into the stack from the', e.throwDirection, 'direction.');

      //   e.target.classList.add('in-deck');
      // });
    });


    // // Prepare the cards in the stack for iteration.
    // const cards = [].slice.call(document.querySelectorAll('ul li'));

    // // An instance of the Stack is used to attach event listeners.
    // const stack = Swing.Stack();

    // cards.forEach((targetElement) => {
    //   // Add card element to the Stack.
    //   stack.createCard(targetElement);
    // });

    // // Add event listener for when a card is thrown out of the stack.
    // stack.on('throwout', (event) => {
    //   // e.target Reference to the element that has been thrown out of the stack.
    //   // e.throwDirection Direction in which the element has been thrown (Direction.LEFT, Direction.RIGHT).

    //   console.log('Card has been thrown out of the stack.');
    //   console.log('Throw direction: ' + (event.throwDirection == Direction.LEFT ? 'left' : 'right'));
    // });

    // // Add event listener for when a card is thrown in the stack, including the spring back into place effect.
    // stack.on('throwin', () => {
    //   console.log('Card has snapped back to the stack.');
    // });






    // const config = {
    //   /**
    //   * Invoked in the event of dragmove.
    //   * Returns a value between 0 and 1 indicating the completeness of the throw out condition.
    //   * Ration of the absolute distance from the original card position and element width.
    //   *
    //   * @param {number} xOffset Distance from the dragStart.
    //   * @param {number} yOffset Distance from the dragStart.
    //   * @param {HTMLElement} element Element.
    //   * @returns {number}
    //   */
    //   throwOutConfidence: (xOffset, yOffset, element) => {
    //     const xConfidence = Math.min(Math.abs(xOffset) / element.offsetWidth, 1);
    //     const yConfidence = Math.min(Math.abs(yOffset) / element.offsetHeight, 1);

    //     return Math.max(xConfidence, yConfidence);
    //   }
    // };

    // const stack = stack = Swing.Stack(config);

  }
}



// var swing = require("swing")
