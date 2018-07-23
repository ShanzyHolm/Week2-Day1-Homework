require("MiniTest/autorun")
require("minitest/rg")
require_relative("../class_b.rb")

class TestSportsTeam_B < MiniTest::Test

  def setup()

    @team = Team.new("win-less", ["Snoopy", "Lucy", "Linus", "Woodstock"], "Charlie Brown")

  end

  def test_team_name
    result = @team.team_name()
    assert_equal("win-less", result)
  end

  # def test_players
  #   result = @team.players()
  #   assert_equal(["Snoopy", "Lucy", "Linus", "Woodstock"], result)
  # end
  #
  # def test_coach
  #   result = @team.coach()
  #   assert_equal("Charlie Brown"m result)
  # end


end
