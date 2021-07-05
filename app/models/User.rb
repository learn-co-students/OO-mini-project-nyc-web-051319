require 'pry'
class User

  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    array =[]
   Allergy.all.select do |allergy|
     binding.pry
     if allergy.user == self
       array << allergy.ingredient
      end
   end
    array
  end

  def recipes
    array = []
    RecipeCard.all.select do |rc|
    if rc.user == self
      array << rc.recipe
    end
  end
  array
  end

  def most_recent_recipe
    Recipe.last
  end

  def top_three_recipes
    RecipeCard.all.sort_by {|rc| rc.rating}[0..2]
  end

end
