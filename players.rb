class Players

  attr_accessor :name, :lives

  def initialize(name)
    @lives = 3
    @name = name
  end

  def reduce_life
    @lives -= 1
  end

end









