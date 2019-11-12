class WateringManagementsController < ApplicationController
  before_action :set_watering_management, only: [:show, :edit, :update, :destroy]

  # GET /watering_managements
  # GET /watering_managements.json
  def index
    @watering_managements = WateringManagement.all
  end

  # GET /watering_managements/1
  # GET /watering_managements/1.json
  def show
  end

  # GET /watering_managements/new
  def new
    @watering_management = WateringManagement.new
  end

  # GET /watering_managements/1/edit
  def edit
  end

  # POST /watering_managements
  # POST /watering_managements.json
  def create
    @watering_management = WateringManagement.new(watering_management_params)

    respond_to do |format|
      if @watering_management.save
        format.html { redirect_to @watering_management, notice: 'Watering management was successfully created.' }
        format.json { render :show, status: :created, location: @watering_management }
      else
        format.html { render :new }
        format.json { render json: @watering_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watering_managements/1
  # PATCH/PUT /watering_managements/1.json
  def update
    respond_to do |format|
      if @watering_management.update(watering_management_params)
        format.html { redirect_to @watering_management, notice: 'Watering management was successfully updated.' }
        format.json { render :show, status: :ok, location: @watering_management }
      else
        format.html { render :edit }
        format.json { render json: @watering_management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watering_managements/1
  # DELETE /watering_managements/1.json
  def destroy
    @watering_management.destroy
    respond_to do |format|
      format.html { redirect_to watering_managements_url, notice: 'Watering management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watering_management
      @watering_management = WateringManagement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watering_management_params
      params.require(:watering_management).permit(:name)
    end
end
