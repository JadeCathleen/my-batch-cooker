class Ingredient < ApplicationRecord
  has_many :ingredient_quantities
  enum category: {
    "boucherie" => 1,
    "volaille" => 2,
    "poissonnerie" => 3,
    "crèmerie" => 4,
    "fruit" => 5,
    "épicerie" => 6,
    "légumes" => 7,
    "liquides" => 8,
    "rayon frais" => 9
  }

  enum unit_category: {
    "pièce" => 1,
    'g' => 2,
    "cl" => 3,
    "c.à café" => 4,
    "c. à soupe" => 5,
    "pincée" => 6
  }
end
