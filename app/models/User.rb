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
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def top_three_recipes
    array = RecipeCard.all.sort_by do |recipecard|
      recipecard.rating
    end.reverse[0..2]
      array.map do |recipecard|
        recipecard.recipe
      end
  end

  def most_recent_recipe
    RecipeCard.all.sort_by do |recipecard|
      recipecard.date
    end.reverse[0].recipe
  end
end
