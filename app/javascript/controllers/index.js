// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

console.log("peppa");

let tabsContainer = document.getElementById("tabs-container");

let tabTogglers = tabsContainer.getElementsByTagName("button");

tabTogglers.forEach(function(toggler) {
  toggler.addEventListener("click", function (e) {
    e.preventDefault();

    let tabContents = document.getElementById("tabs-content");

    for (let i = 0; i < tabContents.children.length; i++) {
      tabTogglers[i].classList.remove("text-yellow-500");
      tabTogglers[i].classList.add("text-gray-500");
      tabContents[i].classList.add("hidden");
    }

    e.target.parentElement.classList.add()



  });
});
