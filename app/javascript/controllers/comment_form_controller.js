import { Controller } from "stimulus"
import $ from 'jquery'
import datepickerFactory from 'jquery-datepicker'

datepickerFactory($);

export default class extends Controller {
  static targets = [ "visible_from", "visible_until" ]

  connect() {
    var self = this;
    var datepicker_options = {
      dateFormat: 'yy-mm-dd'
    }

    $(this.visible_fromTarget).
      datepicker(datepicker_options).
      change(function() { self.update_min_date() })

    $(this.visible_untilTarget).
      datepicker(datepicker_options)

    this.update_min_date()
  }

  update_min_date() {
    $(this.visible_untilTarget).
      datepicker("option", "minDate", $(this.visible_fromTarget).datepicker('getDate'));
  }
}
