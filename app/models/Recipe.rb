class Recipe
  @@all = []

  def self.all
    @@all
  end

  def self.most_popular

  end

  def users
    cards = RecipeCard.all.select do |card|
      if card.recipe == self
        card.user
      end
    end
    users = []
    cards.each do |card|
      users << card.user
    end
    users
  end

  def ingredients
     ri = RecipeIngredient.all.select do |card|
      if card.recipe == self
        card.ingredient
      end
    end
    ingredients = []
    ri.each do |ri|
      ingredients << ri.ingredient
    end
    ingredients
  end

  def allergens
    ingredients = self.ingredients
    allergens = []
    Allergy.all.each do |allergy|
      ingredients.each do |ingredient|
        if allergy.ingredient == ingredient
          allergens << allergy.ingredient
        end
      end
    end
    allergens.uniq
  end

  def add_ingredients(array)
    array.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end

end
Collaps
