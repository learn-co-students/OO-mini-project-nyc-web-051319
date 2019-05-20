class User
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    # return all recipes this user has recipe cards for
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end

  def allergens
    # return all of ingredients this user is allergic to
  end

  def top_three_recipes
    # return top 3 hightest rated recipes from this user
  end

  def most_recent_recipe
    # return recipe most recently added to user's cookbook
  end

  def safe_recipes
    # return all recipes that do not contain ingredients the user is allergic to
  end

end
