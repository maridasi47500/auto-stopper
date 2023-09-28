class MyscriptsController < ApplicationController
  before_action :set_myscript, only: %i[ show edit update destroy ]

  # GET /myscripts or /myscripts.json
  def index
    @myscripts = Myscript.all
  end

  # GET /myscripts/1 or /myscripts/1.json
  def show
  end

  # GET /myscripts/new
  def new
    @myscript = Myscript.new
  end

  # GET /myscripts/1/edit
  def edit
  end

  # POST /myscripts or /myscripts.json
  def create
    @myscript = Myscript.new(myscript_params)

    respond_to do |format|
      if @myscript.save
        format.html { redirect_to myscript_url(@myscript), notice: "Myscript was successfully created." }
        format.json { render :show, status: :created, location: @myscript }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myscripts/1 or /myscripts/1.json
  def update
    respond_to do |format|
      if @myscript.update(myscript_params)
        format.html { redirect_to myscript_url(@myscript), notice: "Myscript was successfully updated." }
        format.json { render :show, status: :ok, location: @myscript }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myscripts/1 or /myscripts/1.json
  def destroy
    @myscript.destroy

    respond_to do |format|
      format.html { redirect_to myscripts_url, notice: "Myscript was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myscript
      @myscript = Myscript.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myscript_params
      params.require(:myscript).permit(:title, :content, :description, :user_id)
    end
end
