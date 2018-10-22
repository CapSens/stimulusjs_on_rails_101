import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  what_is_gnu() {
    for (var index in this.outputTargets)
      this.outputTargets[index].textContent = "GNU's not Unix!"
  }
}
