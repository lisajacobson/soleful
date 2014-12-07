class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :race_name
      t.string :location
      t.decimal :distance
      t.date :date
      t.time :time
      t.string :event_type
      t.string :distance_units

      t.timestamps
    end
  end
end
