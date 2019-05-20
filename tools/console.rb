require_relative '../config/environment.rb'

dean = User.new("Dean")
emi = User.new("Emi")
chris = User.new("Chris")
raphael = User.new("Raphael")
jamie = User.new("Jamie")

pie = Recipe.new("Pie")
hamburger = Recipe.new("Hamburger")
pizza = Recipe.new("Pizza")
sushi = Recipe.new("Sushi")
sandwich = Recipe.new("Sandwich")

flour = Ingredient.new("flour")
bread = Ingredient.new("bread")
meat = Ingredient.new("meat")
sauce = Ingredient.new("sauce")
fish = Ingredient.new("fish")
cheese = Ingredient.new("cheese")
blueberry = Ingredient.new("blueberry")
rice = Ingredient.new("rice")
peanut = Ingredient.new("peanut")

allergy1 = Allergy.new(cheese, emi)
allergy2 = Allergy.new(peanut, dean)
allergy3 = Allergy.new(blueberry, jamie)
allergy4 = Allergy.new(peanut, raphael)

rc1 = RecipeCard.new(pie, emi, "2019-05-01", 3)
rc2 = RecipeCard.new(hamburger, dean, "2017-02-24", 6)
rc3 = RecipeCard.new(sushi, jamie, "2014-10-13", 5)
rc4 = RecipeCard.new(sandwich, chris, "2008-09-10", 4)
rc5 = RecipeCard.new(pie, dean, "2018-05-24", 10)
rc6 = RecipeCard.new(sushi, dean, "2018-05-25", 9)
rc7 = RecipeCard.new(pizza, dean, "2018-05-23", 2)



ri1 = RecipeIngredient.new(pie, flour)
ri2 = RecipeIngredient.new(pie, blueberry)
ri3 = RecipeIngredient.new(sandwich, bread)
ri4 = RecipeIngredient.new(sandwich, meat)
ri5 = RecipeIngredient.new(sandwich, cheese)
ri6 = RecipeIngredient.new(pizza, cheese)
ri7 = RecipeIngredient.new(pizza, sauce)
ri8 = RecipeIngredient.new(sushi, rice)
ri9 = RecipeIngredient.new(sushi, fish)
ri10 = RecipeIngredient.new(hamburger, bread)
ri11 = RecipeIngredient.new(hamburger, cheese)
ri12 = RecipeIngredient.new(hamburger, meat)
ri13 = RecipeIngredient.new(pie, peanut)




binding.pry
1
