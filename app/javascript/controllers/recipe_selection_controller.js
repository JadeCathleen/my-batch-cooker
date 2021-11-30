// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["content", "counter", "recipeNumber"]

  selectRecipe(e) {
    const recipeId = e.currentTarget.dataset.id;
    const batchId = e.currentTarget.dataset.batchId
    const meal = e.currentTarget.dataset.meal
    const url = `/batch_menus/${batchId}/recipes_lists`
    let formData = new FormData()
    formData.append("recipes_list[recipe_id]", recipeId)
    fetch(url, {
      method: 'POST',
      body: formData
    }).then(response => response.json())
    .then((data) => {

      this.contentTarget.insertAdjacentHTML('beforeend', `<div class="chosen-recipe"><p>${data.recipe_name}</p> <a rel="nofollow" data-method="delete" href="/recipes_lists/${data.recipes_list_id}"><i class="fas fa-times"></i></a></div>`)
      let meals_left = meal - this.contentTarget.childElementCount;
      // do {
        //   this.contentTarget.nextSibling.nextSibling.firstChild.classList.add("disabled")
        // } while (meals_left > 0);
        if (meals_left > 1) {
          this.counterTarget.innerText = ` ${meals_left} recettes`
        } else if (meals_left === 1) {
          this.counterTarget.innerText = ` ${meals_left} recette`
        } else {
          this.recipeNumberTarget.innerHTML = '<em>Vous avez choisi toutes vos recettes ! 🎉</em>'
        }
      console.log(this.contentTarget.nextSibling.nextSibling)
        if (meals_left === 0) {
          this.contentTarget.nextSibling.nextSibling.classList.remove("disabled")
        }
    })
  }
}
