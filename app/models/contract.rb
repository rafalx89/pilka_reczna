class Contract < ActiveRecord::Base
  belongs_to :player
  belongs_to :team
  validates_presence_of :team, :start_date, :end_date
end
