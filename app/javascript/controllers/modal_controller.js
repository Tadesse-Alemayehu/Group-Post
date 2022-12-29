import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["show-post-content", "update-post-content", "replay"];
  connect() {
    console.log("Hello, Stimulus!", this.modValue);
  }
  renderNewGroupForm(event) {
    console.log("renderNewGroupForm");
  }
  renderUpdateForm(event) {
    console.log("renderUpdateForm");
  }

  togglePostUpdate() {
    console.log(this["show-post-contentTarget"]);
    console.log(this["show-post-contentTarget"]);
    this["show-post-contentTarget"].classList.toggle("hidden");
    this["update-post-contentTarget"].classList.toggle("hidden");
  }
  toggleReplay(event) {
    let ele = this.replayTargets.filter((el) => {
      console.log(event.target.getAttribute("target"));
      return el.getAttribute("id") == event.target.getAttribute("target");
    })[0];
    ele.classList.toggle("hidden");
    if (event.target.getAttribute("id") == "cancel") {
      event.preventDefault();
    }
  }
}
