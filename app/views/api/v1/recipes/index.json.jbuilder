json.array! @recipes do |recipe|
  json.extract! recipe, :id, :name, :description
end
