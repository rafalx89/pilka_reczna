class League < ActiveRecord::Base
  has_many :teams
  validates_presence_of :name, :country
end
