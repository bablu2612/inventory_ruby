class AddViewToCarDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :views, :integer, default: 0
  end
end
