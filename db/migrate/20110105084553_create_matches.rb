class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.references :team_1
      t.references :team_2
      t.references :matchday
      t.integer :score_team_1
      t.integer :score_team_2

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
