class WeventaddressesController < ApplicationController
  before_action :set_weventaddress, only: [:show, :edit, :update, :destroy]

  # GET /weventaddresses
  # GET /weventaddresses.json
  def index
    @weventaddresses = Weventaddress.all
  end

  # GET /weventaddresses/1
  # GET /weventaddresses/1.json
  def show
  end

  # GET /weventaddresses/new
  def new
    @weventaddress = Weventaddress.new
  end

  # GET /weventaddresses/1/edit
  def edit
  end

  # POST /weventaddresses
  # POST /weventaddresses.json
  def create
    @weventaddress = Weventaddress.new(weventaddress_params)

    respond_to do |format|
      if @weventaddress.save
        format.html { redirect_to @weventaddress, notice: 'Weventaddress was successfully created.' }
        format.json { render :show, status: :created, location: @weventaddress }
      else
        format.html { render :new }
        format.json { render json: @weventaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weventaddresses/1
  # PATCH/PUT /weventaddresses/1.json
  def update
    respond_to do |format|
      if @weventaddress.update(weventaddress_params)
        format.html { redirect_to @weventaddress, notice: 'Weventaddress was successfully updated.' }
        format.json { render :show, status: :ok, location: @weventaddress }
      else
        format.html { render :edit }
        format.json { render json: @weventaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weventaddresses/1
  # DELETE /weventaddresses/1.json
  def destroy
    @weventaddress.destroy
    respond_to do |format|
      format.html { redirect_to weventaddresses_url, notice: 'Weventaddress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weventaddress
      @weventaddress = Weventaddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weventaddress_params
      params.require(:weventaddress).permit(:weventadd1, :weventadd2, :string, :weventcity, :weventstate, :weventpostal, :weventurl)
    end
end
