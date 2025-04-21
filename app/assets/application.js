// Import and configure application dependencies
import * as ActiveStorage from "@rails/activestorage"
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import "channels"

// Initialize Rails UJS and Turbolinks
Rails.start()
Turbolinks.start()
ActiveStorage.start()

// Import custom styles
import "../stylesheets/application"

// Import Bootstrap and its dependencies
import "bootstrap"
import "@popperjs/core"

// Initialize any custom JavaScript functionality
document.addEventListener("turbolinks:load", () => {
  // Add any page-specific initialization here
});
