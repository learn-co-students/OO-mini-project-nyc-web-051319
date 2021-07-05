require 'pry'
class Ingredient

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def allergy_count
  Allergy.all.select do |allergy|
    allergy.ingredient == self
  end.count
end

def self.most_common_allergen
  self.all.sort_by {|ingredient| ingredient.allergy_count}.last
end

end
