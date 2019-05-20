class RecipeCard

  attr_accessor :date, :rating, :user, :recipe

@@all = []

def initialize(date, rating, user, recipe)
  @date = date
  @rating = rating
  @user = user
  @recipe = recipe
  @@all << self
end

def self.all
  @@all
end

def self.find_recipecard(date, rating, user, recipe)
  self.all.find{|recipecard| recipecard.date == date && recipecard.rating == rating && recipecard.user == user && recipecard.recipe == recipe}
end

end
