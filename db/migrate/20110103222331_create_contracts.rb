class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.references :player
      t.references :team
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
