import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = [
    "show-post-content",
    "update-post-content",
    "replay",
    "url",
  ];
  connect() {}
  renderGroupForm(event) {
    const url = this.urlTarget.getAttribute("value");
    fetch(url, {
      headers: { Accept: "text/vnd.turbo-stream.html" },
    })
      .then((response) => response.text())
      .then((html) => {
        Turbo.renderStreamMessage(html);
      })
      .catch((error) => {
        console.error(error);
      });
  }
  disposeGroupForm(event) {
    document
      .getElementById(event.target.getAttribute("target"))
      .classList.add("hidden");
  }

  togglePostUpdate() {
    this["show-post-contentTarget"].classList.toggle("hidden");
    this["update-post-contentTarget"].classList.toggle("hidden");
  }
  toggleReplay(event) {
    let ele = this.replayTargets.filter((el) => {
      return el.getAttribute("id") == event.target.getAttribute("target");
    })[0];
    ele?.classList.toggle("hidden");
    if (event.target.getAttribute("id") == "cancel") {
      event.preventDefault();
    }
  }
}
