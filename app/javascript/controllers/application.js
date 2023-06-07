import { Application } from "@hotwired/stimulus";
import { register } from "swiper/element/bundle";

const application = Application.start()
register();

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
