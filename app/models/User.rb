class User
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
      card.user == self
    end
  end

  def recipes
    find_recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, self)
  end

  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end

  # HELPER METHOD
  def find_allergies
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end

  def allergens
    find_allergies.map do |allergy|
      allergy.ingredient
    end
  end

  # HELPER METHOD
  def top_rated
    find_recipe_cards.sort_by do |card|
      card.rating
    end
  end

  def top_three_recipes
    top_rated.map do |card|
      card.recipe
    end.reverse[0..2]
  end

  def most_recent_recipe
    recipes.last
  end

  # HELPER METHOD
  def unsafe_ingredients?(ingredients)
    ingredients.any? do |ingredient|
      allergens.include?(ingredient)
    end
  end
  
  def safe_recipes
    RecipeCard.all.map do |recipe_card|
      recipe_card.recipe unless unsafe_ingredients?(recipe_card.recipe.ingredients)
    end.reject {|recipe| recipe == nil}.uniq
  end

end
