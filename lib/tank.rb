require 'pry'

class Tank

  attr_reader :model,
              :color,
              :ammo_cap

  def initialize(model, color, ammo_cap)
    @model = model
    @color = color
    @fuel_full = true
    @ammo_cap = ammo_cap
    @fire_main_gun = fire_main_gun
  end

  def fuel_full?
    @fuel_full
  end

  def fire_main_gun
    @ammo_cap -= 1
  end

  #binding.pry
end