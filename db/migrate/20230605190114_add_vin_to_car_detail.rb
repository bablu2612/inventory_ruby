class AddVinToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :vin, :string
  end
end
