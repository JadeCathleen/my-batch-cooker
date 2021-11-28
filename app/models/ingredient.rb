class Ingredient < ApplicationRecord
  has_many :ingredient_quantities
  enum category: {
    "boucherie" => 1,
    "poissonnerie" => 2,
    "crèmerie" => 3,
    "fruits" => 4,
    "épicerie" => 5,
    "légumes" => 6,
    "liquides" => 7,
    "rayon frais" => 8,
    "boulangerie" => 9,
    "herbes" => 10,
    "pâtes" => 11
  }

  enum unit_category: {
    "pièce" => 1,
    'g' => 2,
    "cl" => 3,
    "c. à café" => 4,
    "c. à soupe" => 5,
    "pincée" => 6,
    "tranches" => 7
  }
end
