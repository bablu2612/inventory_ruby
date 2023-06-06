class AddBodyTypeAndOtherFieldsToCarDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :car_details, :transmission, :string
    add_column :car_details, :drivetrain, :string
    add_column :car_details, :body_type, :string
  end
end
