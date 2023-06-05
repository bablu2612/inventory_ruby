class AdminController < ApplicationController
  before_action :authenticate_user!, only: %i[ index ]
  def index
    @car_details = CarDetail.all

  end

  def single_car
  end
end
