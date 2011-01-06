lass Matchday < ActiveRecord::Base
  belongs_to :season
  has_many :matches, :dependent => :destroy
  validates_presence_of :matchday_no, :season_id, :play_time
  validates_uniqueness_of :matchday_no
end
