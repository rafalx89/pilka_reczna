class Match < ActiveRecord::Base
  belongs_to :team1, :class_name => "Team", :foreign_key => "team_1"
  belongs_to :team2, :class_name => "Team", :foreign_key => "team_2" 
  belongs_to :matchday
  validates_presence_of :team_1, :team_2, :matchday_id, :score_team_1, :score_team_2
  validates_numericality_of :score_team_1, :score_team_2
  validate :different_team1_and_team2
  validate :different_leagues

  protected
  def different_team1_and_team2
    errors.add("Team1 and Team2", 'should be different') if team_1 == team_2
  end

  def different_leagues
    errors.add("Team1 and Team2", 'should be in the same league') if team1.league_id != team2.league_id
  end

end
