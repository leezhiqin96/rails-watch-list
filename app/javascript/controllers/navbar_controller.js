import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  updateNavbar() {
    console.log(this);
    const threshold = 400;
    if (window.scrollY >= threshold) {
      this.element.classList.add("navbar-lewagon-grey")
    } else {
      this.element.classList.remove("navbar-lewagon-grey")
    }
  }
}
