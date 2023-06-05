class AddMeterFieldToCarDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :mmr, :string
    # add_column :car_details, :pointer, :string
  end
end
