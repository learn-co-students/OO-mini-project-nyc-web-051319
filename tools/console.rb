require_relative '../config/environment.rb'

require_relative '../config/environment.rb'


mendel = User.new("Mendel")
stephen = User.new("Stephen")
tom = User.new("Tom")
john = User.new("John")
sam = User.new("Sam")

burger = Recipe.new("burger")
pizza = Recipe.new("pizza")
bagel = Recipe.new("bagel")
sandwich = Recipe.new("sandwich")
sushi = Recipe.new("sushi")

flour = Ingredient.new
oil = Ingredient.new
pepper = Ingredient.new
grapes = Ingredient.new
nuts = Ingredient.new
cheese = Ingredient.new
fish = Ingredient.new
rice = Ingredient.new

pizza.add_ingredients([cheese, flour])
burger.add_ingredients([cheese, oil])
sushi.add_ingredients([fish, rice])
bagel.add_ingredients([cheese, flour])

yeast = Allergy.new(flour, tom)
peanut = Allergy.new(nuts, sam)
gluten = Allergy.new(flour, stephen)
yeast = Allergy.new(cheese, mendel)
peanut = Allergy.new(nuts, tom)
gluten = Allergy.new(pepper, stephen)

burger_c = RecipeCard.new(burger, 'May 10', 10, mendel)
burger_c_2 = RecipeCard.new(burger,'May 10', 10, stephen)
burger_c_3 = RecipeCard.new(burger,'May 10', 10, stephen)
pizza_c = RecipeCard.new(bagel,'May 10', 7, mendel)
pizza_c_1 = RecipeCard.new(bagel,'May 10', 3, mendel)
pizza_c_2 = RecipeCard.new(bagel,'May 10', 2, mendel)
pizza_c_3 = RecipeCard.new(bagel,'May 10', 4, mendel)
pizza_c_4 = RecipeCard.new(bagel,'May 10', 8, mendel)
bagel_c = RecipeCard.new(bagel,'May 10', 9, mendel)
pizza_now = RecipeCard.new(pizza, 'May 10', 19, mendel)
sandwich_c = RecipeCard.new(sandwich, 'May 10', 2, john)
sushi_c = RecipeCard.new(sushi,'May 11', 20, mendel)

binding.pry
