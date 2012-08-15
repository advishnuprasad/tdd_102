class Clock < ActiveRecord::Base
  attr_accessible :country, :time, :timezone
  validates_presence_of :country
  validates_presence_of :timezone
  def self.build(params={})
  	Clock.new(params)
  end
end
