class RecipeIngredient

  @@all = []
  attr_accessor :ingredient, :recipe

  def initialize(ingredient, recipe)
    @ingredient, @recipe = ingredient, recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
