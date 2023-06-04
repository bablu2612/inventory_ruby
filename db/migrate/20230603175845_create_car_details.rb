class CreateCarDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :car_details do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :trim
      t.string :mileage
      t.string :fuel_type
      t.string :color
      t.string :vehicle_condition
      t.string :title_status
      t.integer :zip_code

      t.timestamps
    end
  end
end
