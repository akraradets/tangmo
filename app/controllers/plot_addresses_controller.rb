class PlotAddressesController < ApplicationController
  before_action :set_plot_address, only: [:show, :edit, :update, :destroy]

  # GET /plot_addresses
  # GET /plot_addresses.json
  def index
    @plot_addresses = PlotAddress.all
  end

  # GET /plot_addresses/1
  # GET /plot_addresses/1.json
  def show
  end

  # GET /plot_addresses/new
  def new
    @plot_address = PlotAddress.new
  end

  # GET /plot_addresses/1/edit
  def edit
  end

  # POST /plot_addresses
  # POST /plot_addresses.json
  def create
    @plot_address = PlotAddress.new(plot_address_params)

    respond_to do |format|
      if @plot_address.save
        format.html { redirect_to @plot_address, notice: 'Plot address was successfully created.' }
        format.json { render :show, status: :created, location: @plot_address }
      else
        format.html { render :new }
        format.json { render json: @plot_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plot_addresses/1
  # PATCH/PUT /plot_addresses/1.json
  def update
    respond_to do |format|
      if @plot_address.update(plot_address_params)
        format.html { redirect_to @plot_address, notice: 'Plot address was successfully updated.' }
        format.json { render :show, status: :ok, location: @plot_address }
      else
        format.html { render :edit }
        format.json { render json: @plot_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plot_addresses/1
  # DELETE /plot_addresses/1.json
  def destroy
    @plot_address.destroy
    respond_to do |format|
      format.html { redirect_to plot_addresses_url, notice: 'Plot address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plot_address
      @plot_address = PlotAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_address_params
      params.require(:plot_address).permit(:plot_id, :houseNo, :moo, :tambon, :amphoe, :province, :zipcode, :lat, :long)
    end
end
