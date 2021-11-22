class Ingredient < ApplicationRecord
  has_many :ingredient_qtys
    enum category: {
    meat: 0,
    poultry: 1,
    fish: 2,
    cheese: 3,
    fruit: 4,
    condiment: 5,
    vegetable: 6,
    liquid: 7
  }

  enum unit_category: {
    g: 0,
    cl: 1,
    teaspoon: 2,
    tablespoon: 3
  }
end
