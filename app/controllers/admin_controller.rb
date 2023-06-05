class AdminController < ApplicationController
  def index
    @car_details = CarDetail.all

  end

  def single_car
  end
end
