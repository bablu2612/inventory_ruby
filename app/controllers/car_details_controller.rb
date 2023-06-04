class CarDetailsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_car_detail, only: %i[ show edit update destroy ]

  # GET /car_details or /car_details.json
  def index
    @car_details = CarDetail.all
  end

  # GET /car_details/1 or /car_details/1.json
  def show
  end

  # GET /car_details/new
  def new
    @car_detail = CarDetail.new
  end

  # GET /car_details/1/edit
  def edit
  end

  # POST /car_details or /car_details.json
  def create
    @car_detail = CarDetail.new(car_detail_params)

    respond_to do |format|
      if @car_detail.save
        format.html { redirect_to car_detail_url(@car_detail), notice: "Car detail was successfully created." }
        format.json { render :show, status: :created, location: @car_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_details/1 or /car_details/1.json
  def update
    respond_to do |format|
      if @car_detail.update(car_detail_params)
        format.html { redirect_to car_detail_url(@car_detail), notice: "Car detail was successfully updated." }
        format.json { render :show, status: :ok, location: @car_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_details/1 or /car_details/1.json
  def destroy
    @car_detail.destroy

    respond_to do |format|
      format.html { redirect_to car_details_url, notice: "Car detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_detail
      @car_detail = CarDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_detail_params
      params.require(:car_detail).permit(:year, :make, :model, :trim, :mileage, :fuel_type, :color, :vehicle_condition, :title_status, :zip_code, images: [])
    end
end
