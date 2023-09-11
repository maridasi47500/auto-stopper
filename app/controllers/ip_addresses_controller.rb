class IpAddressesController < ApplicationController
  before_action :set_ip_address, only: %i[ show edit update destroy ]

  # GET /ip_addresses or /ip_addresses.json
  def index
    @ip_addresses = IpAddress.all
  end

  # GET /ip_addresses/1 or /ip_addresses/1.json
  def show
  end

  # GET /ip_addresses/new
  def new
    @ip_address = IpAddress.new
  end

  # GET /ip_addresses/1/edit
  def edit
  end

  # POST /ip_addresses or /ip_addresses.json
  def create
    @ip_address = IpAddress.new(ip_address_params)

    respond_to do |format|
      if @ip_address.save
        format.html { redirect_to ip_address_url(@ip_address), notice: "Ip address was successfully created." }
        format.json { render :show, status: :created, location: @ip_address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ip_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip_addresses/1 or /ip_addresses/1.json
  def update
    respond_to do |format|
      if @ip_address.update(ip_address_params)
        format.html { redirect_to ip_address_url(@ip_address), notice: "Ip address was successfully updated." }
        format.json { render :show, status: :ok, location: @ip_address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ip_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_addresses/1 or /ip_addresses/1.json
  def destroy
    @ip_address.destroy

    respond_to do |format|
      format.html { redirect_to ip_addresses_url, notice: "Ip address was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_address
      @ip_address = IpAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ip_address_params
      params.require(:ip_address).permit(:name)
    end
end
