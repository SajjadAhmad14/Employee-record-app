import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["content"];

  validatePhone(e) {
    if (
      e.key != "Backspace" &&
      (e.target.value.length === 3 || e.target.value.length === 7)
    ) {
      e.target.value += "-";
    }
  }

  enableSaveBtn() {
    let btn = document.querySelector(".save-btn-personal");
    let reuiredFields = document.getElementsByClassName("required-field");
    let isValid = true;
    for (var i = 0; i < reuiredFields.length; i++) {
      let newField = reuiredFields[i];
      if (newField.value.trim() === "" || newField.value === null) {
        isValid = false;
        break;
      }
    }
    btn.disabled = !isValid;
  }
}
