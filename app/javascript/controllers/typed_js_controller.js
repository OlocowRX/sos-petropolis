import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"
export default class extends Controller {
  connect() {
    console.log(this.element.dataset);
    const cash = `Mais de ${this.element.dataset.cash} mil reais arrecadados`
    const food = `${this.element.dataset.food}kgs de alimentos arrecadados`
    const cloth = `${this.element.dataset.cloth} peças de roupas doadas`

    console.log(cash);
    console.log(food);
    console.log(cloth);

    new Typed(this.element, {
      strings: ["Ajude Petrópolis", cash, food, cloth],
      typeSpeed: 80,
      loop: true,
    });
  }
}
