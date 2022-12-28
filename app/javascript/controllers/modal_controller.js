import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["show-post-content", "update-post-content"];
  connect() {
    console.log("Hello, Stimulus!", this.modValue);
  }
  toggleManageGroup(event) {
    event.stopPropagation();
    document
      .getElementById(event.target.getAttribute("target"))
      .classList.toggle("hidden");
  }

  togglePostUpdate() {
    console.log(this["show-post-contentTarget"]);
    console.log(this["show-post-contentTarget"]);
    this["show-post-contentTarget"].classList.toggle("hidden");
    this["update-post-contentTarget"].classList.toggle("hidden");
  }
}
