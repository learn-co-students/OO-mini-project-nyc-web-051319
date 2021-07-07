class User
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.map do |card|
      if card.user == self
        card.recipe
      end
    end
  end

  def add_recipe_card(rating, recipe)
    RecipeCard.new(rating, self, recipe)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end

  def top_three_recipes
    user_recipe_cards = RecipeCard.all.select do |card|
      card.user == self
    end
    ratings = {}
    user_recipe_cards.each do |card|
      ratings[card.recipe] = card.rating
    end
    ratings = ratings.sort_by {|k, v| -v}
    top_three = []
    ratings.each do |element|
      top_three << element[0]
    end
    top_three
  end

  def most_recent_recipe
    recipes = self.recipes
    recipes.last
  end
end
