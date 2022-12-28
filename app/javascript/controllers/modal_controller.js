import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["show", "update"];
  connect() {
    console.log("Hello, Stimulus!", this.modValue);
  }
  toggleManageGroup(event) {
    event.stopPropagation();
    document
      .getElementById(event.target.getAttribute("target"))
      .classList.toggle("hidden");
  }

  togglePostUpdate(event) {
    console.log(event);
    this.showTarget.classList.toggle("hidden");
    this.updateTarget.classList.toggle("hidden");
  }
}
