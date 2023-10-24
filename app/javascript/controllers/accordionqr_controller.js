import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="accordionqr"
export default class extends Controller {
  static targets = ["accordion"]

  connect() {
    this.activateAccordion()
  }

  activateAccordion(){
    var acc = this.accordionTargets;
    var i;

    for (i = 0; i < acc.length; i++) {
      acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.maxHeight) {
          panel.style.maxHeight = null;
        } else {
          panel.style.maxHeight = panel.scrollHeight + "px";
        }
      });
    }
  }
}
