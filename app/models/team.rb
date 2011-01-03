class Team < ActiveRecord::Base
  belongs_to :league
  validates_presence_of :name, :coach, :image_url

end
