import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorites"



export default class extends Controller {
  static targets = ["togglableElement", "firstText"]

  connect() {
    console.log("Hello, Stimulus!")
  }
  fire() {
    console.log("Hello, Stimulus!")
    this.togglableElementTarget.classList.toggle("d-none");
    this.firstTextTargets.map((el) => {
      el.classList.toggle("d-none");
    })
  }
}
