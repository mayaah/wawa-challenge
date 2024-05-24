import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Connected");
    const messages = document.getElementById("messages");
    messages.addEventListener("DOMNodeInserted", this.resetScroll);
    this.resetScroll(messages);
  }

  disconnect() {
    console.log("Disconnected");
  }

  resetScroll() {
    // TODO: Not working
    // messages.scrollTop = messages.scrollHeight - messages.clientHeight;
    // messages.scrollTop = messages.scrollHeight
    // messages.scrollTo(0, messages.scrollHeight)
  }
}
