import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="theme"
export default class extends Controller {
  static darkThemeMq = false;
  static targets = ["dark", "light"];
  connect() {
    if (localStorage.getItem("user_theme")) {
      this.darkThemeMq = localStorage.getItem("user_theme") == "dark";
    } else {
      this.darkThemeMq = window.matchMedia("(prefers-color-scheme: dark)");
    }
    if (this.darkThemeMq) {
      this.darkTarget.classList.add("hidden");
      document.documentElement.classList.add("dark");
      localStorage.setItem("user_theme", "dark");
    } else {
      this.lightTarget.classList.add("hidden");
    }
  }

  toggleTheme(event) {
    event.preventDefault();
    document.documentElement.classList.toggle("dark");
    this.darkTarget.classList.toggle("hidden");
    this.lightTarget.classList.toggle("hidden");

    localStorage.setItem(
      "user_theme",
      this.darkTarget.classList.contains("hidden") ? "dark" : "light"
    );
  }
}
