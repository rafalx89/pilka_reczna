class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :firstname
      t.string :surname
      t.string :country
      t.date :birth_date
      t.string :position
      t.integer :shirt_no
      t.references :team

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
