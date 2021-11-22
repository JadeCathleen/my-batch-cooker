class Recipe < ApplicationRecord
has_many :preparation_steps
has_many :recipes_lists
end
