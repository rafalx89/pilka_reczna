class Team < ActiveRecord::Base
  belongs_to :league
  has_many :contracts
  has_many :players, :through => :contracts
  validates_presence_of :name, :coach, :image_url

  def current_players
    self.contracts.select {|e| e.team == self and e.active}.collect {|c| c.player}
  end
end
