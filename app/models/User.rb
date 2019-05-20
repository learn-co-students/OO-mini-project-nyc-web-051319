
class User
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_recipe_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def recipes
    # return all recipes this user has recipe cards for
    self.my_recipe_cards.map do |rc|
      rc.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end

  def get_allergies
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end

  def allergens
    # return all of ingredients this user is allergic to
    self.get_allergies.map do |allergy|
      allergy.ingredient
    end
  end

  def top_three_recipes
    # return top 3 hightest rated recipes from this user
    self.my_recipe_cards.sort_by { |rc| -rc.rating  }[0..2].map do |rc|
      rc.recipe
    end
  end

  def most_recent_recipe
    # return recipe most recently added to user's cookbook
    self.my_recipe_cards.sort_by { |rc| -rc.date.split("-").join.to_i  }.first.recipe
  end

  def safe_recipes
    # return all recipes that do not contain ingredients the user is allergic to
    allergic = self.allergens
    dangerous_recipe = nil

    RecipeIngredient.all.each do |recipe|
      if allergic.include?(recipe.ingredient)
        dangerous_recipe = recipe.recipe
      end
    end

    Recipe.all.select do |recipe|
      recipe != dangerous_recipe
    end

  end

end
