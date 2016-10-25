require "minitest/autorun"
require "minitest/pride"
require "./lib/crew"

class CrewTest < Minitest::Test

  def test_a_crewperson_has_a_name_and_position
    crew = Crew.new("Alice", "Gunner")

    assert_equal "Alice", crew.name
    assert_equal "Gunner", crew.position
  end

  def test_a_crewperson_has_a_different_name_and_position
    crew = Crew.new("John", "Commander")

    assert_equal "John", crew.name
    assert_equal "Commander", crew.position
  end

  def test_crewperson_hungry_by_default 
    crew = Crew.new("John", "Commander")

    assert_equal true, crew.hungry?
  end

  def test_not_hungry_after_eating
    crew = Crew.new("John", "Commander")

    assert_equal true, crew.hungry?

    crew.eat_lunch

    assert_equal false, crew.hungry?
  
  end


  def test_crew_member_is_manning_position
    crew = Crew.new("John", "Commander")

    assert_equal true, crew.manned?
  end

  def test_position_is_not_manned
    crew = Crew.new("John", "Commander")

    assert_equal true, crew.manned?

    #some action here
    crew.went_on_break

    assert_equal false, crew.manned?

  end

  

end