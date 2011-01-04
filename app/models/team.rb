class Team < ActiveRecord::Base
  belongs_to :league
  has_many :players 
  has_many :contracts, :dependent => :destroy
  validates_presence_of :name, :coach, :image_url

end
