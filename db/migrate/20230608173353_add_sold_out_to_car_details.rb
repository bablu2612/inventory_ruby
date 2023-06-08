class AddSoldOutToCarDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :sold_out, :boolean, null: false, default: false
  end
end
