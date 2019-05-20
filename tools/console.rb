require_relative '../config/environment.rb'
chicken = Ingredient.new("Chicken")
egg = Ingredient.new("Egg")
broth = Ingredient.new("Broth")
flour = Ingredient.new("Flour")
sugar = Ingredient.new("Sugar")
beef = Ingredient.new("Beef")
butter = Ingredient.new("Butter")

chicken_stew = Recipe.new([chicken, broth])
cake = Recipe.new(["Egg", "Flour", "Sugar"])
chicken_gravy = Recipe.new(["Chicken", "Broth", "Flour"])
steak = Recipe.new(["Beef", "Butter"])

tom = User.new("Tom")
mike = User.new("Mike")
sarah = User.new("Sarah")

allergy1 = Allergy.new(mike, broth)
allergy2 = Allergy.new(tom, broth)
allergy3 = Allergy.new(sarah, flour)

recipe_card1 = RecipeCard.new(mike, chicken_stew, 2019, 7)
recipe_card2 = RecipeCard.new(tom, cake, 1998, 4)
recipe_card3 = RecipeCard.new(tom, chicken_stew, 2002, 6)
recipe_card4 = RecipeCard.new(sarah, chicken_gravy, 2009, 9)
recipe_card5 = RecipeCard.new(tom, cake, 1985, 7)
recipe_card6 = RecipeCard.new(tom, steak, 2011, 10)


binding.pry
0
