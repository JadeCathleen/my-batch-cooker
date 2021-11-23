class Ingredient < ApplicationRecord
  has_many :ingredient_qtys
    enum category: {
    boucherie: 0,
    volaille: 1,
    poissonnerie: 2,
    cremerie: 3,
    fruit: 4,
    epicerie: 5,
    legumes: 6,
    liquides: 7,
    rayon_frais: 8
  }

  enum unit_category: {
    g: 0,
    cl: 1,
    c_a_cafe: 2,
    c_a_soupe: 3,
    piece: 4
  }
end
