class FertilizeProceduresController < ApplicationController
  before_action :set_fertilize_procedure, only: [:show, :edit, :update, :destroy]

  # GET /fertilize_procedures
  # GET /fertilize_procedures.json
  def index
    @fertilize_procedures = FertilizeProcedure.all
  end

  # GET /fertilize_procedures/1
  # GET /fertilize_procedures/1.json
  def show
  end

  # GET /fertilize_procedures/new
  def new
    @fertilize_procedure = FertilizeProcedure.new
  end

  # GET /fertilize_procedures/1/edit
  def edit
  end

  # POST /fertilize_procedures
  # POST /fertilize_procedures.json
  def create
    @fertilize_procedure = FertilizeProcedure.new(fertilize_procedure_params)

    respond_to do |format|
      if @fertilize_procedure.save
        format.html { redirect_to @fertilize_procedure, notice: 'Fertilize procedure was successfully created.' }
        format.json { render :show, status: :created, location: @fertilize_procedure }
      else
        format.html { render :new }
        format.json { render json: @fertilize_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fertilize_procedures/1
  # PATCH/PUT /fertilize_procedures/1.json
  def update
    respond_to do |format|
      if @fertilize_procedure.update(fertilize_procedure_params)
        format.html { redirect_to @fertilize_procedure, notice: 'Fertilize procedure was successfully updated.' }
        format.json { render :show, status: :ok, location: @fertilize_procedure }
      else
        format.html { render :edit }
        format.json { render json: @fertilize_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fertilize_procedures/1
  # DELETE /fertilize_procedures/1.json
  def destroy
    @fertilize_procedure.destroy
    respond_to do |format|
      format.html { redirect_to fertilize_procedures_url, notice: 'Fertilize procedure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fertilize_procedure
      @fertilize_procedure = FertilizeProcedure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fertilize_procedure_params
      params.require(:fertilize_procedure).permit(:name)
    end
end
