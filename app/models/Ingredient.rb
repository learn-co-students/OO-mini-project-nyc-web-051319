class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    Allergy.all.sort_by { |allergy| allergy.user_count }.reverse.first.ingredient
  end

end
