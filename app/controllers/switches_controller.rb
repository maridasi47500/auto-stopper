class SwitchesController < ApplicationController
  before_action :set_switch, only: %i[ show edit update destroy ]

  # GET /switches or /switches.json
  def index
    @switches = Switch.all
  end

  # GET /switches/1 or /switches/1.json
  def show
    @myswitch_table=MyswitchTable.new(switch_id:@switch.id)
  end

  # GET /switches/new
  def new
    @switch = Switch.new
  end

  # GET /switches/1/edit
  def edit
  end

  # POST /switches or /switches.json
  def create
    @switch = Switch.new(switch_params)

    respond_to do |format|
      if @switch.save
        format.html { redirect_to switch_url(@switch), notice: "Switch was successfully created." }
        format.json { render :show, status: :created, location: @switch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /switches/1 or /switches/1.json
  def update
    respond_to do |format|
      if @switch.update(switch_params)
        format.html { redirect_to switch_url(@switch), notice: "Switch was successfully updated." }
        format.json { render :show, status: :ok, location: @switch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /switches/1 or /switches/1.json
  def destroy
    @switch.destroy

    respond_to do |format|
      format.html { redirect_to switches_url, notice: "Switch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_switch
      @switch = Switch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def switch_params
      params.require(:switch).permit(:name)
    end
end
