class League < ActiveRecord::Base
  validates_presence_of :name, :country
end
