import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="devise"
export default class extends Controller {
  connect() {
    console.log("Devise controller connected");
    const loginForm = document.getElementById("new_user");
    console.log(loginForm);
    loginForm?.classList.add("center");
  }
}
