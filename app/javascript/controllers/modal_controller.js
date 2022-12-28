import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.modValue);
  }
  toggleManageGroup(event) {
    event.stopPropagation();
    document
      .getElementById(event.target.getAttribute("target"))
      .classList.toggle("hidden");
  }
}
