class CommandlinesController < ApplicationController
  before_action :set_commandline, only: %i[ show edit update destroy ]

  # GET /commandlines or /commandlines.json
  def index
    @commandlines = Commandline.all
  end

  # GET /commandlines/1 or /commandlines/1.json
  def show
  end

  # GET /commandlines/new
  def new
    @commandline = Commandline.new
  end

  # GET /commandlines/1/edit
  def edit
  end

  # POST /commandlines or /commandlines.json
  def create
    @commandline = Commandline.new(commandline_params)

    respond_to do |format|
      if @commandline.save
        format.html { redirect_to commandline_url(@commandline), notice: "Commandline was successfully created." }
        format.json { render :show, status: :created, location: @commandline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commandline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commandlines/1 or /commandlines/1.json
  def update
    respond_to do |format|
      if @commandline.update(commandline_params)
        format.html { redirect_to commandline_url(@commandline), notice: "Commandline was successfully updated." }
        format.json { render :show, status: :ok, location: @commandline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commandline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commandlines/1 or /commandlines/1.json
  def destroy
    @commandline.destroy

    respond_to do |format|
      format.html { redirect_to commandlines_url, notice: "Commandline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commandline
      @commandline = Commandline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commandline_params
      params.require(:commandline).permit(:title, :content, :place_id)
    end
end
