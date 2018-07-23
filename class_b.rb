class Team

  def initialize(team_name, players, coach)

    @team_name = team_name
    @players = players
    @coach = coach

  end

# GETTERS
  def team_name
    return @team_name
  end

  def players()
    return @players
  end

  def coach()
    return @coach
  end

  # SETTERS
  def set_coach_name(coach)
    @coach = coach
  end

end
