require_relative '../config/environment.rb'

ted = User.new
rob = User.new
bob = User.new
ric = User.new

nuts = Ingredient.new("nuts")
apple = Ingredient.new("apple")
choco = Ingredient.new("chocolate")

mac = Recipe.new
salad = Recipe.new
pizza = Recipe.new

a = Allergy.new(ted, nuts)
b = Allergy.new(rob, apple)
c = Allergy.new(bob, choco)
d = Allergy.new(ric, nuts)

mac1 = RecipeIngredient.new(nuts, mac)
mac2 = RecipeIngredient.new(apple, mac)
salad1 = RecipeIngredient.new(choco, salad)

card1 = RecipeCard.new(1, ted, mac)
card2 = RecipeCard.new(10, ted, pizza)
card3 = RecipeCard.new(5, ted, salad)

binding.pry
