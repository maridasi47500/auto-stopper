class MyswitchTablesController < ApplicationController
  before_action :set_myswitch_table, only: %i[ show edit update destroy ]

  # GET /myswitch_tables or /myswitch_tables.json
  def index
    @myswitch_tables = MyswitchTable.all
  end

  # GET /myswitch_tables/1 or /myswitch_tables/1.json
  def show
  end

  # GET /myswitch_tables/new
  def new
    @myswitch_table = MyswitchTable.new
  end

  # GET /myswitch_tables/1/edit
  def edit
  end

  # POST /myswitch_tables or /myswitch_tables.json
  def create
    @myswitch_table = MyswitchTable.new(myswitch_table_params)

    respond_to do |format|
      if @myswitch_table.save
        format.html { redirect_to myswitch_table_url(@myswitch_table), notice: "Myswitch table was successfully created." }
        format.json { render :show, status: :created, location: @myswitch_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myswitch_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myswitch_tables/1 or /myswitch_tables/1.json
  def update
    respond_to do |format|
      if @myswitch_table.update(myswitch_table_params)
        format.html { redirect_to myswitch_table_url(@myswitch_table), notice: "Myswitch table was successfully updated." }
        format.json { render :show, status: :ok, location: @myswitch_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myswitch_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myswitch_tables/1 or /myswitch_tables/1.json
  def destroy
    @myswitch_table.destroy

    respond_to do |format|
      format.html { redirect_to myswitch_tables_url, notice: "Myswitch table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myswitch_table
      @myswitch_table = MyswitchTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myswitch_table_params
      params.require(:myswitch_table).permit(:mymac, :port, :switch_id)
    end
end
