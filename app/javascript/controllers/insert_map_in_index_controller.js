import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-map-in-index"
export default class extends Controller {
  static targets = ["peopleIndex", "peopleMap"]
  connect() {
    console.log("connected the map controller")
    setTimeout(() => {
      this.peopleMapTarget.classList.add("d-none")
    }, 300);
    // console.log(this.peopleIndexTarget)
    // console.log(this.peopleMapTarget)
  }

  mapShows(e) {
    console.log("I have been clicked 'Map'")
    this.peopleMapTarget.classList.toggle("d-none")
    this.peopleIndexTarget.classList.toggle("d-none")
  }

}
