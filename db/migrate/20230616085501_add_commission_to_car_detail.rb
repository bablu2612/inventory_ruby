class AddCommissionToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :commission, :string
  end
end
