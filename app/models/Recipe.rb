# require 'pry'

class Recipe
  attr_accessor :name, :ingredient
  @@all = []

  def initialize(name)
    @name = name
    @ingredient = []
    @@all << self
  end

  def self.all
    @@all
  end

  #helper method
  def my_recipe_cards
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  def self.most_popular
    # return recipe instance with highest # of users
    hash = {}
    count = 0
    most_popular = nil

    RecipeCard.all.each do |rc|
      if hash[rc.recipe]
        hash[rc.recipe] += 1
      else
        hash[rc.recipe] = 1
      end
    end

    hash.each do |k,v|
      if v > count
        count = v
        most_popular = k
      end
    end

    most_popular

  end

  def users
    # return user instances who have recipe cards with this recipe
    array = []
    RecipeCard.all.each do |rc|
      if rc.recipe == self
        array << rc.user
      end
    end
    array
  end

  def ingredients
    # return ingredients in this recipe
    RecipeIngredient.all.each do |recipe|
      if recipe.recipe == self
        @ingredient << recipe.ingredient
      end
    end
    @ingredient
  end

  def allergens
    # return all the ingredients in this recipe that are allergens for Users in our system
    list_of_allergies = Allergy.all.map do |allergy|
      allergy.ingredient
    end.uniq

    self.ingredients.select do |ingredient|
      list_of_allergies.include?(ingredient)
    end
    #is there a way to iterate within an iteration to avoid having 2 separate "methods" inside a single method?
  end

  def add_ingredients(ingredients)
    # ingredients = array; associate each of ingredients with this recipe
    @ingredient << ingredients
  end

end
