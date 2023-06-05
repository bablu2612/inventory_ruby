class AddControlerFieldToCarDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :low, :string
    add_column :car_details, :good, :string
    add_column :car_details, :best, :string
  end
end
