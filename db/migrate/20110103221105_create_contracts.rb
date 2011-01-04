class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.integer :player_id
      t.integer :team_id
      t.datetime :resigned_at
      t.boolean :active, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
