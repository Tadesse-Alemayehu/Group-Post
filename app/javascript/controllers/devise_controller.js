import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="devise"
export default class extends Controller {
  connect() {
    const loginForm = document.getElementById("new_user");
    loginForm?.classList.add("center");
  }

  refreshLocation(event) {
    // since I'm sending a turbo stream the page remains the same unless refreshed on submit
    window.location.reload();
    event.target.submit();
  }
}
