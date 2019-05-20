class Allergy
  attr_accessor :user, :ingredient

  @@all = []

  def initialize(user, ingredient)
    @@all << self
    @user, @ingredient = user, ingredient
  end

  def self.all
    @@all
  end

end
