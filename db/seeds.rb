# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'open-uri'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
# Recipes seed

recipes_filepath = 'lib/seeds/recipes_seed.csv'
CSV.foreach(recipes_filepath, csv_options) do |row|
  recipe = { name: row['name'], description: row['description'], recipe_code: row['recipe_code'] }
  model = Recipe.create(recipe)
  model_photo_url = URI.open(row['image_url'])
  model.photo.attach(io: model_photo_url, filename: "image.jpg", content_type: "image/jpg")
  model.save!
  puts "Création de la recette #{model.name}"
end

# Ingredients seed

ingredients_filepath = 'lib/seeds/ingredients_seed.csv'
CSV.foreach(ingredients_filepath, csv_options) do |row|
  ingredient = {
    name: row['name'],
    category: row['category'],
    unit_category: row['unit_category'],
    ingredient_code: row['ingredient_code']
  }
  model = Ingredient.create(ingredient)
  puts "Création de l'ingrédient #{model.name}"
end

# Preparation_steps seed

preparation_steps_filepath = 'lib/seeds/preparation_steps_seed.csv'
CSV.foreach(preparation_steps_filepath, csv_options) do |row|
  prep_step = {
    action_verb: row['action_verb'],
    content: row['content'],
    time: row['time'],
    recipe_code: row['recipe_code'],
    prep_code: row['prep_code'],
    recipe: Recipe.find_by(recipe_code: row['recipe_code'])
  }
  PreparationStep.create(prep_step)
  puts "Creation de la prep step... "
end

# ingredient_quantities seed

ingredient_quantities_filepath = 'lib/seeds/ingredient_quantities_seed.csv'
CSV.foreach(ingredient_quantities_filepath, csv_options) do |row|
  ing_qty = {
    quantity: row['quantity'],
    preparation_step: PreparationStep.find_by(prep_code: row['prep_code']),
    ingredient: Ingredient.find_by(ingredient_code: row['ingredient_code'])
  }
  IngredientQuantity.create(ing_qty)
  puts "Creation de la quantité d'ingrédient... "
end
