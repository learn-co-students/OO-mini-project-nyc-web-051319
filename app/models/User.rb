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

  def my_recipecards
    recipe_cards = RecipeCard.all.select { |recipecard| recipecard.user == self}
  end

  def recipes
    my_recipecards.map {|recipecard| recipecard.recipe}
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

  def allergens_name
    allergens.map do |allergy|
      allergy.ingredient
    end
  end

  def top_three_recipes
    sorted_rating = my_recipecards.sort_by { |recipecard| recipecard.rating }.reverse
    sorted_rating[0..2].map do |recipecard|
      recipecard.recipe
    end
  end

  def most_recent_recipe
    RecipeCard.all.sort_by { |recipecard| recipecard.date }.reverse.first.recipe
  end

  def safe_recipes
    my_recipecards.delete_if {|recipecard| (recipecard.recipe.ingredients & allergens_name).any? }
  end
end
