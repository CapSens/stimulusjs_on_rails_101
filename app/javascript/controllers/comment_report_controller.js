import { Controller } from "stimulus"
import $ from "jquery/dist/jquery.min";

export default class extends Controller {
  static targets = ["container", "button"]

  connect() {
    this.comment_id = this.data.get("id")
  }

  report() {
    var self = this;
    $.ajax({
      type: "PUT",
      dataType: "json",
      url: `/comments/${this.comment_id}`,
      success: function(data, status, xhr) {
	console.log(self.containerTarget)
	console.log(self.buttonTarget)
	$(self.containerTarget).removeClass('bs-callout-primary')
	$(self.containerTarget).addClass('bs-callout-warning')
	$(self.buttonTarget).hide()
      },
      data: {
	comment: {
	  reported: true
	}
      }
    })
  }
}
