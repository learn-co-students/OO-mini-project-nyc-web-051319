class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # HELPER METHOD
  def find_recipe_cards
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    find_recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  # HELPER METHOD
  def find_recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    find_recipe_ingredients.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def add_ingredients(food)
    food.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end

  # HELPER METHOD
  def find_allergies
    RecipeCard.all.map do |recipe_card|
      recipe_card.user.allergens
    end.flatten
  end

  def allergens
    find_allergies.select do |allergen|
      ingredients.include?(allergen)
    end.uniq
  end

  def self.most_popular
    popular = RecipeCard.all.max_by do |recipe_card|
      recipe_card.recipe.find_recipe_cards.count
    end
    popular.recipe
  end

end
