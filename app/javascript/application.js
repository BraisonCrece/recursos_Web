// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

import JSConfetti from 'js-confetti'


const confeti = document.querySelector("#confeti")

confeti.addEventListener("click", () => {
  const jsConfetti = new JSConfetti()
  jsConfetti.addConfetti()
})