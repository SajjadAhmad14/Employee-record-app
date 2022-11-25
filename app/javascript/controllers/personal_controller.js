import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["content"];

  validatePhone(e) {
    let value = e.target.value;
    if (e.key != "Backspace" && (e.target.value.length === 3 || e.target. value.length === 7)) {
      e.target.value += "-";
    }
  }
}
