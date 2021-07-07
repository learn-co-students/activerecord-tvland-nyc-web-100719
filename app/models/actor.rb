class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        #lists all of the characters that actor has alongside the show that the character is in
        self.characters.map do |character| 
            "#{character.name} - #{character.show.name}"
        end
    end


end