import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="payment"
export default class extends Controller {

  // identify targets or HTML elements that our controller will interact with
  static targets = [ "selection", "additionalFields" ]

  initialize() {
    this.showAdditionalFields()
  }

  showAdditionalFields() {
    // get the value of the selection
    let selection = this.selectionTarget.value

    // depending on the payment selection, 
    // we'll disable/hide or enable/show each set of additional fields
    for (let fields of this.additionalFieldsTargets) {
      fields.disabled = fields.hidden = (fields.dataset.type != selection)
    }
  }
}
