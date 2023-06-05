class AddMrrPointerToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :mrr, :float
    add_column :car_details, :pointer, :float
  end
end
