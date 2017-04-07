(1..3).each do |i|
  Ingredient.create(name: "Ingredient #{i}")
end

(1..10).each do |i|
  Drink.create(name: "Drink #{i}")
end
