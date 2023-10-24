import { Controller } from "@hotwired/stimulus" // if using plain es6 import
import QrScanner from 'qr-scanner';



// Connects to data-controller="qrreader"
export default class extends Controller {
  static targets = ["reader"]
  connect() {
    console.log(this.element)
    this.qrScanner = new QrScanner(
      this.element,
      result => console.log('decoded qr code:', result),
      { /* your options or returnDetailedScanResult: true if you're not specifying any other options */ },
  )

  this.qrScanner.start();

  }





}
