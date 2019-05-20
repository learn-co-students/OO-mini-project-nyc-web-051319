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
    # return ingredient instance that the highest number of users are allergic to
    count = 0
    most_common_allergen = nil
    hash = {}

    Allergy.all.each do |allergy|
      if  hash[allergy.ingredient]
        hash[allergy.ingredient] += 1
      else
        hash[allergy.ingredient] = 1
      end
    end

    hash.each do |k, v|
      if v > count
        count = v
        most_common_allergen = k
      end
    end
    ### Ask teacher how to do this more efficently! ###
    
    # self.all.each do |ingredient|
    #   binding.pry
    #   if Allergy.all.count(ingredient) > count
    #     count = Allergy.all.count(ingredient)
    #     most_common_allergen = ingredient
    #   end
    # end
    most_common_allergen
  end
end
