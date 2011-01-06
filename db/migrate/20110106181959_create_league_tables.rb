class CreateLeagueTables < ActiveRecord::Migration
  def self.up
    create_table :league_tables do |t|
      t.integer :position
      t.references :season
      t.references :team
      t.integer :matches_quantity
      t.integer :win_matches
      t.integer :lost_matches
      t.integer :tied_matches
      t.integer :lost_goals
      t.integer :scored_goals
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :league_tables
  end
end
