class Ingredient
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    ingredient_count = {}
    Allergy.all.map do |allergy|
      ingredient_count[allergy.ingredient] ||= 0
      ingredient_count[allergy.ingredient] += 1
    end
    most_common = ingredient_count.max_by do |ingredient, amount|
      amount
    end
    most_common[0]
  end
end
