require 'pry'

class Recipe
  attr_accessor :ingredients

  @@all = []

  def initialize(ingredients)
    @ingredients = ingredients

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    largest = 0
    RecipeCard.all.select do |recipecard|
      if recipecard.recipe.users.count > largest
        largest = recipecard.recipe.users.count
      end
    end
    RecipeCard.all.select do |recipecard|
      if recipecard.recipe.users.count == largest
        return recipecard.recipe
      end
    end
  end

  def users
    RecipeCard.all.map do |recipecard|
      if recipecard.recipe == self
        recipecard.user
      end
    end.compact
  end


  def allergens
    Allergy.all.map do |allergy|
        allergy.ingredient
    end.uniq
  end

  def add_ingredients(ingredients)
    self.ingredients += ingredients
  end
end
