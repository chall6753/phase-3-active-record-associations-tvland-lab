require "pry"
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def actors_list
    x = []
    self.actors.each do |actor|
        x << "#{actor.first_name} #{actor.last_name}"
    
    end
    x
  end
end