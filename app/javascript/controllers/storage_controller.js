import {Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["saved"]
  
  connect() {    
    this.savedTarget.textContent = JSON.parse(localStorage.getItem("savedEvents")).count || 0
  }

  save(ev){
    ev.preventDefault()    
    const savedEvents= JSON.parse(localStorage.getItem("savedEvents"))   

    if(ev.target.id) {
      savedEvents.count += 1
      savedEvents.events.push(parseInt(ev.target.id))
      localStorage.removeItem("savedEvents")
      localStorage.setItem("savedEvents", JSON.stringify(savedEvents))        
    }   
  }

  show(){
    this.savedEvents.textContent = JSON.parse(localStorage.get("savedEvents")).count || 0 
  }
}