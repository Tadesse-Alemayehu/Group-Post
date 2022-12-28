import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.modValue);
  }
  toggleManageGroup(event) {
    console.log(event.target);
    console.log(event.target.value);
    document
      .getElementById(event.target.getAttribute("value"))
      .classList.toggle("hidden");
  }
}
