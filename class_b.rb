class Team

  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, players, coach)

    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0

  end

# GETTERS
  # def team_name
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end

  # SETTERS
  # def set_coach_name(coach)
  #   @coach = coach
  # end
  #
  def player_on_team(name)
    return @players.include?(name)
  end

  def win_or_lose(result)
    if result == true
        @points += 1
    end
  end

  # def win_or_lose(outcome)
  #   if outcome == "win"
  #     result = @points += 1
  #   end
  # end

end
