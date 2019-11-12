class HarvestProceduresController < ApplicationController
  before_action :set_harvest_procedure, only: [:show, :edit, :update, :destroy]

  # GET /harvest_procedures
  # GET /harvest_procedures.json
  def index
    @harvest_procedures = HarvestProcedure.all
  end

  # GET /harvest_procedures/1
  # GET /harvest_procedures/1.json
  def show
  end

  # GET /harvest_procedures/new
  def new
    @harvest_procedure = HarvestProcedure.new
  end

  # GET /harvest_procedures/1/edit
  def edit
  end

  # POST /harvest_procedures
  # POST /harvest_procedures.json
  def create
    @harvest_procedure = HarvestProcedure.new(harvest_procedure_params)

    respond_to do |format|
      if @harvest_procedure.save
        format.html { redirect_to @harvest_procedure, notice: 'Harvest procedure was successfully created.' }
        format.json { render :show, status: :created, location: @harvest_procedure }
      else
        format.html { render :new }
        format.json { render json: @harvest_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harvest_procedures/1
  # PATCH/PUT /harvest_procedures/1.json
  def update
    respond_to do |format|
      if @harvest_procedure.update(harvest_procedure_params)
        format.html { redirect_to @harvest_procedure, notice: 'Harvest procedure was successfully updated.' }
        format.json { render :show, status: :ok, location: @harvest_procedure }
      else
        format.html { render :edit }
        format.json { render json: @harvest_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harvest_procedures/1
  # DELETE /harvest_procedures/1.json
  def destroy
    @harvest_procedure.destroy
    respond_to do |format|
      format.html { redirect_to harvest_procedures_url, notice: 'Harvest procedure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest_procedure
      @harvest_procedure = HarvestProcedure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harvest_procedure_params
      params.require(:harvest_procedure).permit(:name)
    end
end
