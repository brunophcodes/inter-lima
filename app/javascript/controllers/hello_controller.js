import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.window.console.log("Hello World!")
  }
}
