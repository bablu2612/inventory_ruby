class AddDealTypeToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :deal_type, :string
  end
end
