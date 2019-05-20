class Allergy

  attr_accessor :user, :ingredient

  @@all = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def user_count
    @@all.select {|allergy| allergy == self}.count
  end

  def self.find_allergy(user, ingredient)
    self.all.find { |allergy| allergy.user == user && allergy.ingredient == ingredient}
  end

  def self.all
    @@all
  end

end
