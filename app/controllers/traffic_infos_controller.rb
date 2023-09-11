class TrafficInfosController < ApplicationController
  before_action :set_traffic_info, only: %i[ show edit update destroy ]

  # GET /traffic_infos or /traffic_infos.json
  def index
    @traffic_infos = TrafficInfo.all
  end

  # GET /traffic_infos/1 or /traffic_infos/1.json
  def show
  end

  # GET /traffic_infos/new
  def new
    @traffic_info = TrafficInfo.new
  end

  # GET /traffic_infos/1/edit
  def edit
  end

  # POST /traffic_infos or /traffic_infos.json
  def create
    @traffic_info = TrafficInfo.new(traffic_info_params)

    respond_to do |format|
      if @traffic_info.save
        format.html { redirect_to traffic_info_url(@traffic_info), notice: "Traffic info was successfully created." }
        format.json { render :show, status: :created, location: @traffic_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @traffic_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traffic_infos/1 or /traffic_infos/1.json
  def update
    respond_to do |format|
      if @traffic_info.update(traffic_info_params)
        format.html { redirect_to traffic_info_url(@traffic_info), notice: "Traffic info was successfully updated." }
        format.json { render :show, status: :ok, location: @traffic_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @traffic_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traffic_infos/1 or /traffic_infos/1.json
  def destroy
    @traffic_info.destroy

    respond_to do |format|
      format.html { redirect_to traffic_infos_url, notice: "Traffic info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traffic_info
      @traffic_info = TrafficInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def traffic_info_params
      params.require(:traffic_info).permit(:mysource, :mydestination, :time)
    end
end
