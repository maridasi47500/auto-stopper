class PromsController < ApplicationController
  before_action :set_prom, only: %i[ show edit update destroy ]

  # GET /proms or /proms.json
  def index
    @proms = Prom.all
  end

  # GET /proms/1 or /proms/1.json
  def show
  end

  # GET /proms/new
  def new
    @prom = Prom.new
  end

  # GET /proms/1/edit
  def edit
  end

  # POST /proms or /proms.json
  def create
    @prom = Prom.new(prom_params)

    respond_to do |format|
      if @prom.save
        format.html { redirect_to prom_url(@prom), notice: "Prom was successfully created." }
        format.json { render :show, status: :created, location: @prom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proms/1 or /proms/1.json
  def update
    respond_to do |format|
      if @prom.update(prom_params)
        format.html { redirect_to prom_url(@prom), notice: "Prom was successfully updated." }
        format.json { render :show, status: :ok, location: @prom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proms/1 or /proms/1.json
  def destroy
    @prom.destroy

    respond_to do |format|
      format.html { redirect_to proms_url, notice: "Prom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prom
      @prom = Prom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prom_params
      params.require(:prom).permit(:name, :description)
    end
end
