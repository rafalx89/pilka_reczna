class League < ActiveRecord::Base
  has_many :teams, :dependent => :destroy
  validates_presence_of :name, :country
end
