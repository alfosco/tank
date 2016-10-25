class Crew

  attr_reader :name,
              :position

  def initialize(name, position)
    @name     = name
    @position = position
    @hungry   = true
    @manned   = true
  end

  def hungry?
    @hungry
  end

  def eat_lunch
    @hungry = false
  end

  def manned?
    @manned
  end

  def went_on_break
    @manned = false
  end



end