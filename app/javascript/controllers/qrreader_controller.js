import { Controller } from "@hotwired/stimulus"
import {Html5QrcodeScanner} from "html5-qrcode";
import {Html5Qrcode} from "html5-qrcode";


// Connects to data-controller="qrreader"
export default class extends Controller {
  static targets = ["reader"]
  connect() {
    this.html5QrcodeScanner = new Html5QrcodeScanner(
      "reader",
      { fps: 10, qrbox: {width: 250, height: 250} },
      /* verbose= */ false);
    this.html5QrcodeScanner.render(this.onScanSuccess, this.onScanFailure);


  }



  onScanSuccess(decodedText, decodedResult) {
    // handle the scanned code as you like, for example:
    console.log(`Code matched = ${decodedText}`, decodedResult);
  }

  onScanFailure(error) {
    // handle scan failure, usually better to ignore and keep scanning.
    // for example:
    console.warn(`Code scan error = ${error}`);
  }


cameraWorking(){
  const html5QrCode = new Html5Qrcode(/* element id */ "reader");
html5QrCode.start(
  cameraId,
  {
    fps: 10,    // Optional, frame per seconds for qr code scanning
    qrbox: { width: 250, height: 250 }  // Optional, if you want bounded box UI
  },
  (decodedText, decodedResult) => {
    // do something when code is read
  },
  (errorMessage) => {
    // parse error, ignore it.
    console.log("ahhh")
  })
.catch((err) => {
  // Start failed, handle it.
  console.log("ahhh2222")
});
}

}
