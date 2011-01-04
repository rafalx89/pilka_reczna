class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.integer :shirt_number
      t.integer :position
      t.integer :country

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
