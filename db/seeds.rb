require 'open-uri'
require 'json'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

# open url
list = open(url).read
# parsing json
ingredients = JSON.parse(list)
# returning an array of hashes, each with one ingredient stored as hash value
drinks = ingredients["drinks"]

# extracting each value and pushing into final array
ingredient_list = []
drinks.each { |e| ingredient_list << e['strIngredient1'] }
ingredient_list.sort!
puts "Importing ingredients"
ingredient_list.each do |ingredient|
  Ingredient.create(name: ingredient)
end
puts "Ingredients imported, good to go!"
