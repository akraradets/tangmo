class PlotsController < ApplicationController
  before_action :set_plot, only: [:show, :edit, :update, :destroy]
  before_action :pre_process, only: [:create, :update]

  # GET /plots
  # GET /plots.json
  def index
    @plots = Plot.all
  end

  # GET /plots/1
  # GET /plots/1.json
  def show
  end

  # GET /plots/new
  def new
    @plot = Plot.new
  end

  # GET /plots/1/edit
  def edit
  end

  # POST /plots
  # POST /plots.json
  def create
    @plot = Plot.new(plot_params)
    respond_to do |format|
      if @plot.save
        format.html { redirect_to @plot, notice: 'Plot was successfully created.' }
        format.json { render :show, status: :created, location: @plot }
      else
        format.html { render :new }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plots/1
  # PATCH/PUT /plots/1.json
  def update
    respond_to do |format|
      # submit with deletePicture
      if !params["commit_deletePicture"].nil?
        params["plot"]["picture"]["delete"].each do |index,value|
          @plot.pictures[index.to_i].delete
        end
        format.html { redirect_to edit_plot_path(@plot) }
      # Normal update button
      elsif @plot.update(plot_params)
        if !params["plot"]["picture"].nil?
          if !params["plot"]["picture"]["delete"].nil?
            params["plot"]["picture"]["delete"].each do |index,value|
              @plot.pictures[index.to_i].delete
            end
          end
          if !params["plot"]["picture"]["new"].nil?
            @plot.pictures.attach(params["plot"]["picture"]["new"])
          end
        end
        format.html { redirect_to @plot, notice: 'Plot was successfully updated.' }
        format.json { render :show, status: :ok, location: @plot }
      else
        format.html { render :edit }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plots/1
  # DELETE /plots/1.json
  def destroy
    @plot.destroy
    respond_to do |format|
      format.html { redirect_to plots_url, notice: 'Plot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plot
      @plot = Plot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_params
      params.require(:plot).permit(:farmer_id, :areaRai, :treeCount, :breed, :project, :certificate, :certificateDate, :harvestPeriod, :harvestQuantity, :price, :plotManagement, :fertilizeManagement, :waterManagement, :illnessManagement, :harvestManagement, :sellingChannel, :logistic, :addressNo, :addressMoo, :addressTambon, :addressAmphoe, :addressProvince, :addressZipcode, :lat, :long, :picture)
    end

    def pre_process
      # pre process
      if(params["plot"]["plotManagement"].nil?)
        params["plot"]["plotManagement"] = {}
      end
      if(params["plot"]["fertilizeManagement"].nil?)
        params["plot"]["fertilizeManagement"] = {}
      end
      if(params["plot"]["waterManagement"].nil?)
        params["plot"]["waterManagement"] = {}
      end
      if(params["plot"]["illnessManagement"].nil?)
        params["plot"]["illnessManagement"] = {}
      end
      if(params["plot"]["harvestManagement"].nil?)
        params["plot"]["harvestManagement"] = {}
      end
      if(params["plot"]["sellingChannel"].nil?)
        params["plot"]["sellingChannel"] = {}
      end
      if(params["plot"]["logistic"].nil?)
        params["plot"]["logistic"] = {}
      end

      params["plot"]["plotManagement"] = params["plot"]["plotManagement"].to_json
      params["plot"]["fertilizeManagement"] = params["plot"]["fertilizeManagement"].to_json
      params["plot"]["waterManagement"] = params["plot"]["waterManagement"].to_json
      params["plot"]["illnessManagement"] = params["plot"]["illnessManagement"].to_json
      params["plot"]["harvestManagement"] = params["plot"]["harvestManagement"].to_json
      params["plot"]["sellingChannel"] = params["plot"]["sellingChannel"].to_json
      params["plot"]["logistic"] = params["plot"]["logistic"].to_json
    end
end
