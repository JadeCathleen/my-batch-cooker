class Api::V1::RecipesController < Api::V1::BaseController

  before_action :set_recipe, only: :show

  def index
    @recipes = Recipe.all
  end

  def show
    @ingredients = []
    @recipe.preparation_steps.each do |prep_step|
      prep_step.ingredient_quantities.each do |qty|
        ingredient = {}
        ingredient[:name] = qty.ingredient.name
        ingredient[:category] = qty.ingredient.category
        ingredient[:quantity] = qty.quantity
        ingredient[:unit_category] = qty.ingredient.unit_category
        @ingredients << ingredient
      end
    end
    @ingredients
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
