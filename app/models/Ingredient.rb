require 'pry'

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
     array = Allergy.all.map do |allergy|
       allergy.ingredient
     end
     hash = array.inject(Hash.new(0)) {|h, v| h[v] += 1; h}
     array.max_by { |v| hash[v]}
   end

 end
