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