class User
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  def recipes
    new_array = []
    RecipeCard.all.select do |recipecard|
      if recipecard.user == self
        new_array << recipecard.recipe
      end
    end
    new_array
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    new_array = []
    Allergy.all.select do |allergy|
      if allergy.user == self
        new_array << allergy.ingredient
      end
    end
    new_array
  end

  def top_three_recipes
    RecipeCard.all.sort_by {|rc| rc.rating}[0..2]
  end

  def most_recent_recipe
    Recipe.all.last
  end



end
