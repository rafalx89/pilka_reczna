class Player < ActiveRecord::Base
  attr_reader :active_contract

  belongs_to :team
  has_many :contracts
  validates_presence_of :firstname, :surname, :country, :birth_date, :position, :shirt_no

  def find_active_contract
    active = self.contracts
    active.each do |a|
      if a.end_date > Date.today
        @active_contract = a
      end
    end
  end
end
