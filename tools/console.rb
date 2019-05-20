require_relative '../config/environment.rb'


# mary = User.new
# christian = User.new
# avi = User.new
# charlie = User.new
# yana = User.new
# elma = User.new


# chicken = Ingredient.new
# bread = Ingredient.new
# fish = Ingredient.new
#
# tendies = Recipe.new
#
# fried_chicken = RecipeIngredient.new(chicken, tendies)
#
# puts bread
# puts chicken
# puts tendies
# puts mary
# puts mary.add_recipe_card("5-20", 5,tendies)
#
#
# puts chris.declare_allergy(chicken)
# puts jake.declare_allergy(chicken)
# puts jake.declare_allergy(bread)
# puts mary.declare_allergy(chicken)
# puts mary.declare_allergy(bread)



# tendies = Recipe.new
# salad = Recipe.new
# mary.add_recipe_card(5, 5, tendies)
# christian.add_recipe_card(5, 5, tendies)
# avi.add_recipe_card(5, 5, tendies)
# charlie.add_recipe_card(5, 5, tendies)
# yana.add_recipe_card(5, 5, tendies)
# elma.add_recipe_card(5, 5, salad)
#
#
# puts Recipe.most_popular




# puts mary.allergens
# puts mary.recipes
# puts Ingredient.most_common_allergen
# puts tendies.users
#
# puts tendies.ingredients
# puts tendies.allergen


mary = User.new

tendies = Recipe.new
salad = Recipe.new
burger = Recipe.new
tea = Recipe.new

mary.add_recipe_card("05-19", 1, tendies)
mary.add_recipe_card("06-19", 2, salad)
mary.add_recipe_card("05-09", 3, burger)
mary.add_recipe_card("05-13", 4, tea)


puts mary.top_three_recipes

# binding.pry
# 0
