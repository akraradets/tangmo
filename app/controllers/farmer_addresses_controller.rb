class FarmerAddressesController < ApplicationController
  before_action :set_farmer_address, only: [:show, :edit, :update, :destroy]

  # GET /farmer_addresses
  # GET /farmer_addresses.json
  def index
    @farmer_addresses = FarmerAddress.all
  end

  # GET /farmer_addresses/1
  # GET /farmer_addresses/1.json
  def show
  end

  # GET /farmer_addresses/new
  def new
    @farmer_address = FarmerAddress.new
  end

  # GET /farmer_addresses/1/edit
  def edit
  end

  # POST /farmer_addresses
  # POST /farmer_addresses.json
  def create
    @farmer_address = FarmerAddress.new(farmer_address_params)

    respond_to do |format|
      if @farmer_address.save
        format.html { redirect_to @farmer_address, notice: 'Farmer address was successfully created.' }
        format.json { render :show, status: :created, location: @farmer_address }
      else
        format.html { render :new }
        format.json { render json: @farmer_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farmer_addresses/1
  # PATCH/PUT /farmer_addresses/1.json
  def update
    respond_to do |format|
      if @farmer_address.update(farmer_address_params)
        format.html { redirect_to @farmer_address, notice: 'Farmer address was successfully updated.' }
        format.json { render :show, status: :ok, location: @farmer_address }
      else
        format.html { render :edit }
        format.json { render json: @farmer_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmer_addresses/1
  # DELETE /farmer_addresses/1.json
  def destroy
    @farmer_address.destroy
    respond_to do |format|
      format.html { redirect_to farmer_addresses_url, notice: 'Farmer address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farmer_address
      @farmer_address = FarmerAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farmer_address_params
      params.require(:farmer_address).permit(:farmer_id, :houseNo, :moo, :tambon, :amphoe, :province, :zipcode)
    end
end
