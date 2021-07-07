class Ingredient
  # attr_accessor
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.most_common_allergen
  #   Allergy.uniq.map { |allergy| Allergy.count(n) }.max
  #   # self.all.find {|ingredient| allergy}
  # end

  def allergy_count
    Allergy.all.select do |allergy|
      allergy.ingredient == self
    end.count
  end

  def self.most_common_allergen
    self.all.sort_by {|ingredient| ingredient.allergy_count}.last
  end

end
