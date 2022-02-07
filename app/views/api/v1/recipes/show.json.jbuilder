json.extract! @recipe, :id, :name, :description
json.ingredients @ingredients do |ingredient|
  json.extract! ingredient, :name, :category, :quantity, :unit_category
end
json.preparation_steps @recipe.preparation_steps do |prep_step|
  json.extract! prep_step, :id, :action_verb, :content, :time
end
