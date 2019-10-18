class CreateCharacters < ActiveRecord::Migration[5.1]
    #define a change method in which to do the migration
    def change
      create_table :characters do |c| 
        c.string :name
        c.integer :actor_id
        c.integer :show_id
      end
    end
  end