require_relative '../config/environment.rb'

# mary = User.new
# christian = User.new
# avi = User.new
# charlie = User.new
# yana = User.new
# elma = User.new


# chicken = Ingredient.new
# bread = Ingredient.new
# # fish = Ingredient.new
# puts mary
# puts tendies

# puts mary.add_recipe_card("5-20", 5, tendies)
#
# mary.declare_allergy(chicken)
# puts mary.declare_allergy(bread)
#
# puts mary.allergens
#
# puts mary.recipes

# puts Ingredient.most_common_allergen

# puts tendies.users

# fried_chicken = Recipe.new
# fried_chicken.add_ingredients(chicken)
# puts chicken
#
# puts fried_chicken.allergens

# tendies = Recipe.new
# salad = Recipe.new

# christian.add_recipe_card(5, 5, tendies)
# avi.add_recipe_card(5, 5, tendies)
# charlie.add_recipe_card(5, 5, tendies)
# yana.add_recipe_card(5, 5, tendies)
# elma.add_recipe_card(5, 5, salad)


# binding.pry

# puts Recipe.most_popular


mary = User.new

tendies = Recipe.new
salad = Recipe.new
burger = Recipe.new
tea = Recipe.new

mary.add_recipe_card("05-19", 1, tendies)
mary.add_recipe_card("05-19", 2, salad)
mary.add_recipe_card("05-19", 3, burger)
mary.add_recipe_card("05-19", 4, tea)


puts mary.top_three_recipes


# binding.pry
# 0
