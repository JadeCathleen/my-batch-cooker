class RecipesController < ApplicationController
  def index
    @recipes_list = RecipesList.new
    @recipes_lists = RecipesList.where(batch_menu_id: current_user.batch_menus.last)
    @recipes = Recipe.where.not(id: @recipes_lists.pluck(:recipe_id))
    @batch_menu = BatchMenu.find(current_user.batch_menus.last.id)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

end
