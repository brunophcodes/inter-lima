import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content","menu", "admin"]
  
  connect() {
    
  }

  closeOnBigScreen(event){
    if (window.innerWidth>768){
      this.closeMenu()
    }
  }

  toggle_sections(){
    if (this.menuTarget.classList.contains('hidden')){
        this.openMenu()
    } else {
        this.closeMenu()
    }
  }

  toggle_admin(){
    if (this.adminTarget.classList.contains('hidden')){
        this.openAdmin()
    } else {
        this.closeAdmin()
    }
  }

  openMenu(){
    this.menuTarget.classList.remove('hidden')
  }

  closeMenu(){
    this.menuTarget.classList.add('hidden')
  }

  openAdmin(){
    this.adminTarget.classList.remove('hidden')
  }
  
  closeAdmin(){
    this.adminTarget.classList.add('hidden')
  }

}





// https://betterprogramming.pub/show-and-hide-elements-with-rails-7s-stimulus-e988c35fbfb3 
// https://stimulus.hotwired.dev/reference/targets 
// https://www.storyly.io/post/interactive-content-vs-static-content 
// https://stackoverflow.com/questions/38616990/how-do-static-variables-behave-between-multiple-targets 
// https://discourse.cmake.org/t/multiple-executables-thus-multiple-different-builds-of-the-same-static-lib/8081 