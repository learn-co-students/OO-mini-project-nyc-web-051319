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

  def recipes
    recipe_cards = RecipeCard.all.select { |recipecard| recipecard.user == self}
    recipe_cards.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe) unless RecipeCard.find_recipecard(date, rating, self, recipe)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient) unless Allergy.find_allergy(self, ingredient)
  end

  def allergens
    Allergy.all.select { |allergy| allergy.user == self}
  end

  def top_three_recipes
    best_recipes = RecipeCard.all.sort_by { |recipecard| recipecard.rating }.reverse
    super_recipes = best_recipes.select do |recipecard|
      recipecard.user == self
    end
    super_recipes[0..2].map do |recipecard|
      recipecard.recipe
    end
  end

  def most_recent_recipe
    RecipeCard.all.sort_by { |recipecard| recipecard.date }.reverse.first.recipe
  end
end
