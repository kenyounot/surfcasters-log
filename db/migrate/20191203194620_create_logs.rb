class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.string :wind_direction
      t.integer :wind_speed
      t.string :conditions
      t.string :precipitation
      t.string :water_clarity
      t.string :moon_phase
      t.integer :air_temperature
      t.integer :water_temperature
      t.string :barometer
      t.integer :swell
      t.string :tide
      t.integer :trip_rating
      t.text :comments
      
      t.timestamps
    end
  end
end
