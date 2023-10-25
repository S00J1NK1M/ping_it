import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gametime"
export default class extends Controller {
  static targets = ["timer"]
  connect() {
    this.startCountdown();
  }
  startCountdown() {
    const startTime = 3600; // 60 minutes in seconds
    let timeLeft = startTime;
    this.updateTimerDisplay(timeLeft);
    this.timerInterval = setInterval(() => {
      timeLeft -= 1;
      this.updateTimerDisplay(timeLeft);
      if (timeLeft <= 0) {
        clearInterval(this.timerInterval);
        this.timerTarget.textContent = 'Time\'s up!';
      }
    }, 1000);
  }
  updateTimerDisplay(timeLeft) {
    const minutes = Math.floor(timeLeft / 60);
    const seconds = timeLeft % 60;
    const formattedTime = `${String(minutes).padStart(2, '0')}:${String(seconds).padStart(2, '0')}`;
    this.timerTarget.textContent = formattedTime;
  }
  disconnect() {
    clearInterval(this.timerInterval);
  }
}
