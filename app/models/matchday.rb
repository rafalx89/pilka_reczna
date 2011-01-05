class Matchday < ActiveRecord::Base
  belongs_to :season
  validates_presence_of :matchday_no, :season_id, :play_time
end
