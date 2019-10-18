require 'pry'
class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
    def actors_list
        chars= self.characters
        chars.map do |char|
            char.actor.full_name
        end
    end

end