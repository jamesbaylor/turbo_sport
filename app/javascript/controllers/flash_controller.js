import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["message"];

  connect() {
    this.messageTarget.classList.add("fade-in");
    setTimeout(() => {
      this.messageTarget.classList.remove("fade-in");    
      this.messageTarget.classList.add("fade-out");    
      this.messageTarget.remove();
    }, 3000);  
    
    
  }

  disconnect() {
    this.messageTarget.classList.remove("fade-out");  
  }
}

