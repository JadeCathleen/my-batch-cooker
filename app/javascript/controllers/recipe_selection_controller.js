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
  static targets = ["content", "recipe"]

  selectRecipe(e) {
    const recipeId = e.currentTarget.dataset.id
    const batchId = e.currentTarget.dataset.batchId
    const url = `/batch_menus/${batchId}/recipes_lists`
    const card = e.currentTarget.closest('.card-link')
    let formData = new FormData()
    formData.append("recipes_list[recipe_id]", recipeId)
    fetch(url, {
      method: 'POST',
      body: formData
    }).then(response => response.json())
    .then((data) => {
      this.contentTarget.insertAdjacentHTML('beforeend', `<p>${data.recipe_name}</p><a rel="nofollow" data-method="delete" href="/recipes_lists/${data.recipes_list_id}">Supprimer</a>`)
      card.classList.add('d-none')
    })
  }
}
