class Recipe

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_count
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end.count
  end

  def self.most_popular
    self.all.sort_by {|recipe| recipe.recipe_count}.last
  end

  def users
    RecipeCard.all.find do |rc|
      if rc.recipe == self
        return rc.user
      end
    end
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(ingredient, self)
  end

  def ingredients
    array = []
    RecipeIngredient.all.select do |ri|
      if ri.recipe == self
        array << ri.ingredient
      end
    end
    array
  end

  def allergens
    Allergy.all.select do |allergy|
      return ingredients
    end
  end

end
