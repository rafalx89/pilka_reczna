class Matchday < ActiveRecord::Base
  belongs_to :season
  has_many :matches
  validates_presence_of :matchday_no, :season_id, :play_time
end
