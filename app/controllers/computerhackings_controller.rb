class ComputerhackingsController < ApplicationController
  before_action :set_computerhacking, only: %i[ show edit update destroy ]

  # GET /computerhackings or /computerhackings.json
  def index
    @computerhackings = Computerhacking.all
  end

  # GET /computerhackings/1 or /computerhackings/1.json
  def show
  end

  # GET /computerhackings/new
  def new
    @computerhacking = Computerhacking.new
  end

  # GET /computerhackings/1/edit
  def edit
  end

  # POST /computerhackings or /computerhackings.json
  def create
    @computerhacking = Computerhacking.new(computerhacking_params)

    respond_to do |format|
      if @computerhacking.save
        format.html { redirect_to computerhacking_url(@computerhacking), notice: "Computerhacking was successfully created." }
        format.json { render :show, status: :created, location: @computerhacking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @computerhacking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computerhackings/1 or /computerhackings/1.json
  def update
    respond_to do |format|
      if @computerhacking.update(computerhacking_params)
        format.html { redirect_to computerhacking_url(@computerhacking), notice: "Computerhacking was successfully updated." }
        format.json { render :show, status: :ok, location: @computerhacking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @computerhacking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computerhackings/1 or /computerhackings/1.json
  def destroy
    @computerhacking.destroy

    respond_to do |format|
      format.html { redirect_to computerhackings_url, notice: "Computerhacking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computerhacking
      @computerhacking = Computerhacking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def computerhacking_params
      params.require(:computerhacking).permit(:name, :description)
    end
end
