import { Application } from "@hotwired/stimulus"
import "@rails/actiontext"
import "trix"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

export { application }
