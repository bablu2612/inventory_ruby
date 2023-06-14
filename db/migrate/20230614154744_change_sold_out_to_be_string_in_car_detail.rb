class ChangeSoldOutToBeStringInCarDetail < ActiveRecord::Migration[6.1]
  def change
    change_column :car_details, :sold_out, :string

  end
end
