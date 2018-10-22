import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  say_hello() {
    this.outputTarget.textContent = "Hello World!"
  }
}
