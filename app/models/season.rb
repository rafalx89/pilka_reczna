class Season < ActiveRecord::Base
  has_many :matchdays
  validates_presence_of :start_date, :end_date, :season_no
  validates_uniqueness_of :season_no

end
