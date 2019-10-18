require 'pry'
class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
    def build_show(name:)
        #binding.pry
        self.show=Show.create(name:name)
    end
    def build_network(call_letters:)
        
        self.show.network=Network.new(call_letters: call_letters)
    end

end