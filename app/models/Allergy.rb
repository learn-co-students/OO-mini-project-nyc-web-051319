class Allergy

  @@all = []
  attr_accessor :user, :ingredient

  def initialize(user, ingredient)
    @user, @ingredient = user, ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end
