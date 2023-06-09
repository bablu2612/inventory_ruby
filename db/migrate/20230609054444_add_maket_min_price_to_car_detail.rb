class AddMaketMinPriceToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :market_min_price, :string
    add_column :car_details, :market_max_price, :string
  end
end
