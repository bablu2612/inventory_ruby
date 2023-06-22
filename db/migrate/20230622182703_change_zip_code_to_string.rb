class ChangeZipCodeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :car_details, :zip_code, :string
  end
end
