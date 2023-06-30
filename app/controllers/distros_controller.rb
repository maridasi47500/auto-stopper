class DistrosController < ApplicationController
  before_action :set_distro, only: %i[ show edit update destroy ]

  # GET /distros or /distros.json
  def index
    @distros = Distro.all
  end

  # GET /distros/1 or /distros/1.json
  def show
  end

  # GET /distros/new
  def new
    @distro = Distro.new
  end

  # GET /distros/1/edit
  def edit
  end

  # POST /distros or /distros.json
  def create
    @distro = Distro.new(distro_params)

    respond_to do |format|
      if @distro.save
        format.html { redirect_to distro_url(@distro), notice: "Distro was successfully created." }
        format.json { render :show, status: :created, location: @distro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @distro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distros/1 or /distros/1.json
  def update
    respond_to do |format|
      if @distro.update(distro_params)
        format.html { redirect_to distro_url(@distro), notice: "Distro was successfully updated." }
        format.json { render :show, status: :ok, location: @distro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @distro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distros/1 or /distros/1.json
  def destroy
    @distro.destroy

    respond_to do |format|
      format.html { redirect_to distros_url, notice: "Distro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distro
      @distro = Distro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def distro_params
      params.require(:distro).permit(:name, :image)
    end
end
