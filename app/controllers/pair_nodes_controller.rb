class PairNodesController < ApplicationController
  before_action :set_pair_node, only: %i[ show edit update destroy ]

  # GET /pair_nodes or /pair_nodes.json
  def index
    @pair_nodes = PairNode.all
  end

  # GET /pair_nodes/1 or /pair_nodes/1.json
  def show
  end

  # GET /pair_nodes/new
  def new
    @pair_node = PairNode.new
  end

  # GET /pair_nodes/1/edit
  def edit
  end

  # POST /pair_nodes or /pair_nodes.json
  def create
    @pair_node = PairNode.new(pair_node_params)

    respond_to do |format|
      if @pair_node.save
        format.html { redirect_to pair_node_url(@pair_node), notice: "Pair node was successfully created." }
        format.json { render :show, status: :created, location: @pair_node }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pair_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pair_nodes/1 or /pair_nodes/1.json
  def update
    respond_to do |format|
      if @pair_node.update(pair_node_params)
        format.html { redirect_to pair_node_url(@pair_node), notice: "Pair node was successfully updated." }
        format.json { render :show, status: :ok, location: @pair_node }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pair_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pair_nodes/1 or /pair_nodes/1.json
  def destroy
    @pair_node.destroy

    respond_to do |format|
      format.html { redirect_to pair_nodes_url, notice: "Pair node was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pair_node
      @pair_node = PairNode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pair_node_params
      params.require(:pair_node).permit(:mymac1, :mymac2)
    end
end
