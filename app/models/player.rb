class Player < ActiveRecord::Base
  has_many :contracts
  has_many :teams, :through => :contracts

  def current_contract
    self.contracts.find(:first, :conditions => {:active => true})
  end

  def current_team
    (contract = self.contracts.find(:first, :conditions => {:active => true}) and !contract.nil?) ? contract.team : nil
  end
end
