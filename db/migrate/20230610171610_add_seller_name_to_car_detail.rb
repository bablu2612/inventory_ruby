class AddSellerNameToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :seller_name, :string
  end
end
