class Contract < ActiveRecord::Base
  belongs_to :team
  belongs_to :player

  before_create :reactive_last
  after_create :active_new


  private

  def reactive_last
    player = self.player
    if player.contracts.count > 0
     
      c = player.contracts.last
      c.active = false
      c.resigned_at = Time.now
      c.save
    end
  end

  def active_new
    self.update_attribute(:active, true)
  end
end
