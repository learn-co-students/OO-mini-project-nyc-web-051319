require 'pry'

class Recipe

  attr_accessor :name, :ingredients

  @@all = []

  def initialize(name, ingredients)
    @name = name
    @ingredients = []
    @ingredients << ingredients
    @ingredients.flatten!
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    recipe_count = Recipe.all.sort_by do |recipe|
      recipe.user_count
    end
    recipe_count.reverse.first
  end

  def users
    recipecards = RecipeCard.all.select { |recipecard| recipecard.recipe == self}
    recipecards.map do |recipecard|
      recipecard.user
    end
  end

  def user_count
    users.count
  end

  def allergens
    allergens = []
    ingredients.each do |ingredient|
      if Allergy.all.select { |allergy| allergy.ingredient == ingredient}.count > 0
        allergens << ingredient
      end
    end
    allergens
  end

  def add_ingredients(ingredients)
    @ingredients << ingredients
    @ingredients.flatten!.uniq
  end

end
