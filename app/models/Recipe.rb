require 'pry'
class Recipe

  @@all = []

  def initialize
    @@all << self
  end


  def self.all
    @all
  end

  def users
     RecipeCard.all.map do |rc|
        if rc.recipe == self
          rc.user
        end
     end
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(ingredient, self)
  end

  def ingredients
    array = []
    RecipeIngredient.all.select do |rc|
      if rc.recipe == self
        array << rc.ingredient
      end
    end
    array
  end

  def allergen
    Allergy.all.select {|allergy| allergy.ingredient}
  end

  def recipe_count
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end.count
  end

  def self.most_popular
    self.all.sort_by {|recipe| recipe.recipe_count}.last
  end

  end
