class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    ingredients = []
    Allergy.all.each do |allergy|
      ingredients << allergy.ingredient
    end
    freq = ingredients.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    ingredients.max_by { |v| freq[v] }
  end
end
