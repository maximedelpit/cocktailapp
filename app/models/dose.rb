class Dose < ApplicationRecord
  belongs_to :drink
  belongs_to :ingredient
  validates :drink, uniqueness: { scope: :ingredient, message: "uniq ingred."}
end
