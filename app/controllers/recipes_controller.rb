class RecipesController < ApplicationController
  def index
    @recipes_list = RecipesList.new
    @recipes_lists = RecipesList.where(batch_menu_id: current_user.batch_menus.last)
    @batch_menu = BatchMenu.find(current_user.batch_menus.last.id)
    @meals_list = @batch_menu.attributes.select { |_k, v| v == true}.keys
    @nb_of_meals = @meals_list.count
    @nb_of_meals_left = @meals_list.count - @batch_menu.recipes.count

    if params.dig(:search, :query).present?
      @recipes = policy_scope(Recipe).order(created_at: :desc).global_search(params.dig(:search, :query))
      @filtered = true
    else
      @filtered = false
      @recipes = policy_scope(Recipe).order(created_at: :desc)
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

end
