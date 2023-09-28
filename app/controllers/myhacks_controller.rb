class MyhacksController < ApplicationController
  before_action :set_myhack, only: %i[ show edit update destroy ]

  # GET /myhacks or /myhacks.json
  def index
    @myhacks = Myhack.all
  end

  # GET /myhacks/1 or /myhacks/1.json
  def show
  end

  # GET /myhacks/new
  def new
    @myhack = Myhack.new
  end

  # GET /myhacks/1/edit
  def edit
  end

  # POST /myhacks or /myhacks.json
  def create
    @myhack = Myhack.new(myhack_params)

    respond_to do |format|
      if @myhack.save
        format.html { redirect_to myhack_url(@myhack), notice: "Myhack was successfully created." }
        format.json { render :show, status: :created, location: @myhack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myhack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myhacks/1 or /myhacks/1.json
  def update
    respond_to do |format|
      if @myhack.update(myhack_params)
        format.html { redirect_to myhack_url(@myhack), notice: "Myhack was successfully updated." }
        format.json { render :show, status: :ok, location: @myhack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myhack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myhacks/1 or /myhacks/1.json
  def destroy
    @myhack.destroy

    respond_to do |format|
      format.html { redirect_to myhacks_url, notice: "Myhack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myhack
      @myhack = Myhack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myhack_params
      params.require(:myhack).permit(:title, :content, :user_id)
    end
end
