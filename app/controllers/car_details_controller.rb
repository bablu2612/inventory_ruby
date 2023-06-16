class CarDetailsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_car_detail, only: %i[ show edit update destroy ]

  # GET /car_details or /car_details.json
  def index
    @car_details = CarDetail.all
  end

  def send_offer_email
    @car = CarDetail.find(params[:id])
    # @car.asking_price= params[:asking_price]
    @car.save!
    OfferMailer.send_offer_email(@car, params).deliver_now
    respond_to do |format|
        format.html { redirect_to "/single_car/#{@car.id}", notice: "Request is successfully sent." }

      end



  end

  def send_offer_mail_request_offer
    @car = CarDetail.find(params[:id])
  
    OfferMailer.send_offer_mail_request_offer(@car, params).deliver_now
    respond_to do |format|
        format.html { redirect_to "/single_car/#{@car.id}", notice: "Offer is successfully sent." }

      end



  end


  



def show_only_sold_out

  car = CarDetail.find(params[:id])
  car.update(sold_out: params[:sold_out])
  # binding.pry
    render json: {data: car ,status: 200 ,message: "Record updated successfully"}

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
    # low= car_detail_params[:mmr].to_i - (car_detail_params[:mmr].to_i*10)/100
    # good=car_detail_params[:mmr].to_i - (car_detail_params[:mmr].to_i*5)/100
    # best=car_detail_params[:mmr].to_i - (car_detail_params[:mmr].to_i*3)/100


   
    @car_detail = CarDetail.new(car_detail_params)
    
    respond_to do |format|
      if @car_detail.save
        # @car_detail.update(low: low, good: good, best: best)

        format.html { redirect_to admin_path, notice: "Car detail was successfully created." }
        format.json { render :show, status: :created, location: @car_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_details/1 or /car_details/1.json
  def update
    
    # binding.pry
    
    respond_to do |format|
      # low= car_detail_params[:mmr].to_i - (car_detail_params[:mmr].to_i*10)/100
      # good=car_detail_params[:mmr].to_i - (car_detail_params[:mmr].to_i*5)/100
      # best=car_detail_params[:mmr].to_i - (car_detail_params[:mmr].to_i*3)/100
     
      if @car_detail.update(car_detail_params)
          # @car_detail.update(low: low, good: good, best: best)
        format.html { redirect_to admin_path, notice: "Car detail was successfully updated." }
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
      format.html { redirect_to admin_path, notice: "Car detail was successfully destroyed." }
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
      params.require(:car_detail).permit(:year,:commission,:pointer,:mmr,:low,:best,:market_min_price,:market_max_price,:deal_type,:seller_name,:vin,:transmission,:drivetrain,:body_type, :make, :model, :trim, :mileage, :fuel_type, :color, :vehicle_condition, :title_status, :zip_code, :asking_price, images: [])
    end
end
