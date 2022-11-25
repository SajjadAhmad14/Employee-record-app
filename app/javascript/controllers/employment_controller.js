import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["content"];

  validateDate(e) {
    e.target.value=e.target.value.replace(/^(\d\d)(\d)$/g,'$1/$2').replace(/^(\d\d\/\d\d)(\d+)$/g,'$1/$2').replace(/[^\d\/]/g,'')
  }
}
