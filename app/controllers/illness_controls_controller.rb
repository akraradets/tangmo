class IllnessControlsController < ApplicationController
  before_action :set_illness_control, only: [:show, :edit, :update, :destroy]

  # GET /illness_controls
  # GET /illness_controls.json
  def index
    @illness_controls = IllnessControl.all
  end

  # GET /illness_controls/1
  # GET /illness_controls/1.json
  def show
  end

  # GET /illness_controls/new
  def new
    @illness_control = IllnessControl.new
  end

  # GET /illness_controls/1/edit
  def edit
  end

  # POST /illness_controls
  # POST /illness_controls.json
  def create
    @illness_control = IllnessControl.new(illness_control_params)

    respond_to do |format|
      if @illness_control.save
        format.html { redirect_to @illness_control, notice: 'Illness control was successfully created.' }
        format.json { render :show, status: :created, location: @illness_control }
      else
        format.html { render :new }
        format.json { render json: @illness_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /illness_controls/1
  # PATCH/PUT /illness_controls/1.json
  def update
    respond_to do |format|
      if @illness_control.update(illness_control_params)
        format.html { redirect_to @illness_control, notice: 'Illness control was successfully updated.' }
        format.json { render :show, status: :ok, location: @illness_control }
      else
        format.html { render :edit }
        format.json { render json: @illness_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illness_controls/1
  # DELETE /illness_controls/1.json
  def destroy
    @illness_control.destroy
    respond_to do |format|
      format.html { redirect_to illness_controls_url, notice: 'Illness control was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illness_control
      @illness_control = IllnessControl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illness_control_params
      params.require(:illness_control).permit(:name)
    end
end
