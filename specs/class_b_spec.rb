require("MiniTest/autorun")
require("minitest/rg")
require_relative("../class_b.rb")

class TestSportsTeam_B < MiniTest::Test

  def setup()

    @team = Team.new("win-less", ["Snoopy", "Lucy", "Linus", "Woodstock"], "Charlie Brown")

  end

  def test_team_name()
    result = @team.team_name()
    assert_equal("win-less", result)
  end

  def test_players()
    result = @team.players()
    assert_equal(["Snoopy", "Lucy", "Linus", "Woodstock"], result)
  end

  def test_coach()
    result = @team.coach()
    assert_equal("Charlie Brown", result)
  end

  def test_change_coach_name()
    @team.coach = "Peppermint Patty"
    assert_equal("Peppermint Patty", @team.coach())
  end

  def test_add_new_player()
    @team.players << "Schroeder"
    assert_equal(["Snoopy", "Lucy", "Linus", "Woodstock", "Schroeder"], @team.players())
  end

  def test_player_on_team()
    result = @team.player_on_team("Woodstock")
    assert_equal(true, result)
  end

  def test_win_or_lose()
    @team.win_or_lose(true)
    assert_equal(1, @team.points)
  end

  # def test_win_or_lose()
  #   result = @team.win_or_lose("win")
  #   assert_equal(1, result)
  # end

  # def test_change_coach_name()
  #   @team.set_coach_name("Peppermint Patty")
  #   assert_equal("Peppermint Patty", @team.coach())
  # end


end
