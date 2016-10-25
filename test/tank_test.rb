require 'minitest/autorun'
require 'minitest/pride'
require './lib/tank.rb'

class TankTest < Minitest::Test
  def test_it_assigns_a_model
    tank = Tank.new("M1A2", "green", 42)
    assert_equal "M1A2", tank.model
    assert_equal "green", tank.color
  end

  def test_tank_fuel_level_is_full
    tank = Tank.new("M1A2", "green", 42)
    assert_equal true, tank.fuel_full?
  end

  def test_tank_ammo_capacity
    tank = Tank.new("M1A2", "green", 42)
    assert_equal 42, tank.ammo_cap
  end

  def test_tank_fires_main_gun
    tank = Tank.new("M1A2", "green", 42)
    tank.fire_main_gun
    assert_equal 41, tank.ammo_cap
  end

end