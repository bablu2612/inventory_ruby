class AddAskingPriceToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :asking_price, :string
  end
end
