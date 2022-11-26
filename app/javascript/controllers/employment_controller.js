import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["content"];

  validateDate(e) {
    e.target.value=e.target.value.replace(/^(\d\d)(\d)$/g,'$1/$2').replace(/^(\d\d\/\d\d)(\d+)$/g,'$1/$2').replace(/[^\d\/]/g,'')
  }

  enableSaveBtn() {
    let btn = document.querySelector(".save-btn-employment");
    let reuiredFields = document.getElementsByClassName("required-field-emp");
    console.log(reuiredFields)
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
