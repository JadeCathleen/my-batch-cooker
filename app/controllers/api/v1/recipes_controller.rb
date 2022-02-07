class Api::V1::RecipesController < Api::V1::BaseController
  def index
    @restaurants = Recipes.all
  end
end
