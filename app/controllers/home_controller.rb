class HomeController < ApplicationController
  def index
  end

  def single_car
     @car_detail = CarDetail.find(params[:id])

  end
end
