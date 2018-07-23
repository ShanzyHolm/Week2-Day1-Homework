class Team

  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach, points)

    @team_name = team_name
    @players = players
    @coach = coach
    @points = points

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

end
