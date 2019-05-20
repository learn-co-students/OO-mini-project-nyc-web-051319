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
    allergy_count = Allergy.all.sort_by { |allergy| allergy.user_count }.reverse.first
    allergy_count.ingredient
  end

end
