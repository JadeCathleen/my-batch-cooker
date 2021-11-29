class RecipesList < ApplicationRecord
  belongs_to :batch_menu
  belongs_to :recipe

  DAYS = ['Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi', 'Dimanche']
  DAY_COLUMN = { monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6, sunday: 7 }

  def calendar_row
    meal_time.split('_').last == 'lunch' ? 2 : 3
  end

  def calendar_column
    DAY_COLUMN[meal_time.split('_').first.to_sym]
  end

  # def recipe_list_by_meal_time(v)
  #   @recipe_list = RecipesList.find_by(meal_time: v)
  # end

end
