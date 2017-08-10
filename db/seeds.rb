# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'json'

cocktails = Cocktail.create([{ name: "Mint Julep" }, { name: "Whiskey Sour" }, { name: "Mojito" }])
ingredients = Ingredient.create([{ name: "lemon" }, { name: "ice" }, { name: "mint leaves" }])

(0..2).to_a.each do |i|
  Dose.create(description: "#{i}cl", cocktail: cocktails[i], ingredient: ingredients[i])
  Dose.create(description: "#{i + 1}cl", cocktail: cocktails[i], ingredient: ingredients[i - 1])
end


# A cocktail has a name (e.g. "Mint Julep", "Whiskey Sour", "Mojito")
# An ingredient has a name (e.g. "lemon", "ice", "mint leaves")
# A dose is the amount needed for each ingredient in a cocktail (e.g. the Mojito cocktail needs 6cl of lemon). So each dose references a cocktail, an ingredient and has a description.
