class BatchMenu < ApplicationRecord
  has_many :recipes_lists, dependent: :destroy
  has_many :recipes, through: :recipes_lists
  validates :name, length: { maximum: 60,
  too_long: "%{count} characters is the maximum allowed" }
  validates :nb_of_people, numericality: { less_than: 5 }

  def shopping_list
    list = {}
    recipes.each do |recipe|
      recipe.ingredient_quantities.each do |qty|
        if list[qty.ingredient.category]
          if list[qty.ingredient.category][qty.ingredient.name]
            list[qty.ingredient.category][qty.ingredient.name][:quantity] += ((qty.quantity).fdiv(4) * nb_of_people).ceil
          else
            set_ingredient_hash(qty)
            list[qty.ingredient.category][qty.ingredient.name] = @ingredient_name[qty.ingredient.name]
          end
        else
          set_ingredient_hash(qty)
          list[qty.ingredient.category] = {}
          list[qty.ingredient.category][qty.ingredient.name] = @ingredient_name[qty.ingredient.name]
        end
      end
    end
    list
  end

  def prep_list
    list = {}
    recipes.each do |recipe|
      recipe.preparation_steps.each do |step|
        if list[step.action_verb].nil?
        list[step.action_verb] = {
          recipe.name => step.content
        }
        else
          list[step.action_verb][recipe.name] = step.content
        end
      end
    end
    list
  end

  # def oven_temp

  # end

  private

  def set_ingredient_hash(qty)
    @ingredient_name = {}
    ingredient_details = {}
    ingredient_details[:quantity] = ((qty.quantity).fdiv(4) * nb_of_people).ceil
    ingredient_details[:unit_category] = qty.ingredient.unit_category
    @ingredient_name[qty.ingredient.name] = {
      quantity: ingredient_details[:quantity],
      unit_category: ingredient_details[:unit_category]
    }
  end
end
