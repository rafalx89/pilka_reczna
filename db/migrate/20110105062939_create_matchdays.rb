class CreateMatchdays < ActiveRecord::Migration
  def self.up
    create_table :matchdays do |t|
      t.integer :matchday_no
      t.references :season
      t.date :play_time

      t.timestamps
    end
  end

  def self.down
    drop_table :matchdays
  end
end
