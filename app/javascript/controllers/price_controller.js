import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  static targets = ["visible"]
  connect(){
    console.log("Price controller connected")
  }

  show(event){
    let checkbox;
    if(event.target.id === "is_free"){
        checkbox = event.target

        if(checkbox.checked) {
          this.visibleTarget.classList.add("hide")
        }else{
          this.visibleTarget.classList.remove("hide")
        }      
      }  

  }
}