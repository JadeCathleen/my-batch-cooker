class Ingredient < ApplicationRecord
  has_many :ingredient_quantities
  enum category: {
    "boucherie" => 1,
    "volaille" => 2,
    "poissonnerie" => 3,
    "crèmerie" => 4,
    "fruits" => 5,
    "épicerie" => 6,
    "légumes" => 7,
    "liquides" => 8,
    "rayon frais" => 9,
    "boulangerie" => 10
  }

  enum unit_category: {
    "pièce" => 1,
    'g' => 2,
    "cl" => 3,
    "c.à café" => 4,
    "c. à soupe" => 5,
    "pincée" => 6,
    "tranche" => 7
  }
end
