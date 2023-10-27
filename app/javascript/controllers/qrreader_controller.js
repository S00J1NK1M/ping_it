import { Controller } from "@hotwired/stimulus" // if using plain es6 import
import QrScanner from 'qr-scanner';

// Connects to data-controller="qrreader"
export default class extends Controller {
  static targets = ["reader", "result"]
  connect() {
    this.scanned = false

    console.log(this.element)
    this.qrScanner = new QrScanner(
      this.readerTarget,
      result =>
        this.createTag(result), {
      highlightCodeOutline: true
      }
    )

  this.qrScanner.start();
  }

  createTag(url){
      const atag = `<a href=${url.data}> Confirm </a>`
      this.resultTarget.insertAdjacentHTML("beforeend", atag)

      this.qrScanner.stop();
  }
}
