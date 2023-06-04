require "application_system_test_case"

class CarDetailsTest < ApplicationSystemTestCase
  setup do
    @car_detail = car_details(:one)
  end

  test "visiting the index" do
    visit car_details_url
    assert_selector "h1", text: "Car Details"
  end

  test "creating a Car detail" do
    visit car_details_url
    click_on "New Car Detail"

    fill_in "Color", with: @car_detail.color
    fill_in "Fuel type", with: @car_detail.fuel_type
    fill_in "Make", with: @car_detail.make
    fill_in "Mileage", with: @car_detail.mileage
    fill_in "Model", with: @car_detail.model
    fill_in "Title status", with: @car_detail.title_status
    fill_in "Trim", with: @car_detail.trim
    fill_in "Vehicle condition", with: @car_detail.vehicle_condition
    fill_in "Year", with: @car_detail.year
    fill_in "Zip code", with: @car_detail.zip_code
    click_on "Create Car detail"

    assert_text "Car detail was successfully created"
    click_on "Back"
  end

  test "updating a Car detail" do
    visit car_details_url
    click_on "Edit", match: :first

    fill_in "Color", with: @car_detail.color
    fill_in "Fuel type", with: @car_detail.fuel_type
    fill_in "Make", with: @car_detail.make
    fill_in "Mileage", with: @car_detail.mileage
    fill_in "Model", with: @car_detail.model
    fill_in "Title status", with: @car_detail.title_status
    fill_in "Trim", with: @car_detail.trim
    fill_in "Vehicle condition", with: @car_detail.vehicle_condition
    fill_in "Year", with: @car_detail.year
    fill_in "Zip code", with: @car_detail.zip_code
    click_on "Update Car detail"

    assert_text "Car detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Car detail" do
    visit car_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car detail was successfully destroyed"
  end
end
