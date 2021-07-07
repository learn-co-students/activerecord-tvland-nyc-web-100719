class Show < ActiveRecord::Base
  #show has many characters and has many actors through characters.
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.characters.map do |character|
            character.actor.full_name
        end
    end
end