class Api::V1::RecipesController < Api::V1::BaseController
  def index
    @recipes = Recipes.all
  end
end
