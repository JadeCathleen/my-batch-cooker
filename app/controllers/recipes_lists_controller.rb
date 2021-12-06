class RecipesListsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[create]

  def create
    @recipes_list = RecipesList.new(recipe_list_params)
    @recipes_list.recipe_id = params['recipes_list']['recipe_id']
    @recipe = Recipe.find(params['recipes_list']['recipe_id'])
    @recipes_list.batch_menu_id = params['batch_menu_id']
    @batch_menu = BatchMenu.find(params['batch_menu_id'])
    @meals_list = @batch_menu.attributes.select { |_k, v| v == true }.keys
    @nb_of_meals = @meals_list.count
    @nb_of_meals_left = @meals_list.count - @batch_menu.recipes.count

    respond_to do |format|
      if @nb_of_meals_left.positive?
        meals_time = RecipesList.where(batch_menu: @batch_menu).pluck(:meal_time)
        @meals_list.reject! { |meal_list| meals_time.include?(meal_list) }
        @recipes_list.meal_time = @meals_list.first
        if @recipes_list.save
          format.json { render json: { recipe_name: @recipe.name, recipes_list_id: @recipes_list.id } }
        end
      end
    end
  end

  def destroy
    @recipes_list = RecipesList.find(params[:id])
    @recipes_list.destroy
    redirect_to recipes_path
  end

  private

  def recipe_list_params
    params.require(:recipes_list).permit(:recipe_id, :batch_menu_id)
  end
end
