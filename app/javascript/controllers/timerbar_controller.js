import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['timerbar'];
  connect() {
    this.bar = document.querySelector('#bar');
    this.timeLimit = "150s";
    this.bar.style.animationDuration = this.timeLimit;
  }

}
