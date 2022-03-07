import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"
import NodeWatchFileSystem from "webpack/lib/node/NodeWatchFileSystem";

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Ajude Petrópolis", "5 mil doações até o momento"],
      typeSpeed: 80,
      loop: true,
    });
  }
}
