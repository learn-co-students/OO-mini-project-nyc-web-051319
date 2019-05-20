require_relative '../config/environment.rb'
require 'pry'

mushroom = Ingredient.new("mushroom")
beans = Ingredient.new("beans")
pepper = Ingredient.new("pepper")
salt = Ingredient.new("salt")
fish = Ingredient.new("fish")
chicken = Ingredient.new("chicken")

user_1 = User.new("User_1")
user_2 = User.new("User_2")
user_3 = User.new("User_3")
user_4 = User.new("User_4")

recipe_1 = Recipe.new("Recipe_1", [mushroom, pepper, salt])
recipe_2 = Recipe.new("Recipe_2", [chicken, beans, pepper])
recipe_3 = Recipe.new("Recipe_3", [fish, pepper, salt])
recipe_4 = Recipe.new("Recipe_4", [chicken, pepper, beans])
recipe_5 = Recipe.new("Recipe_5", [fish, mushroom, salt])
recipe_6 = Recipe.new("Recipe_6", [fish, mushroom, pepper])

recipecard_1 = RecipeCard.new("2019/10/12", 4, user_1, recipe_2)
recipecard_2 = RecipeCard.new("2019/11/12", 5, user_1, recipe_3)
recipecard_5 = RecipeCard.new("2017/02/03", 1, user_1, recipe_4)
recipecard_6 = RecipeCard.new("2019/06/12", 9, user_1, recipe_5)
recipecard_7 = RecipeCard.new("2019/08/12", 2, user_1, recipe_6)

recipecard_3 = RecipeCard.new("2019/10/12", 4, user_2, recipe_1)
recipecard_4 = RecipeCard.new("2018/09/22", 8, user_3, recipe_1)
recipecard_8 = RecipeCard.new("2019/11/12", 0, user_4, recipe_2)

user_1.declare_allergy(pepper)
# user_1.declare_allergy(fish)
user_2.declare_allergy(pepper)

recipe_2.add_ingredients([mushroom, fish])
# user_1.add_recipe_card(recipe_1, "2018/06/12", 6)

# user_1.top_three_recipes.map do |recipecard|
  # puts recipecard.name
# end

user_1.safe_recipes.map do |recipecard|
  puts recipecard.recipe.name
end
