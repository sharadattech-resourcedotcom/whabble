class VenuelocationsController < ApplicationController
  before_action :set_venuelocation, only: [:show, :edit, :update, :destroy]

  # GET /venuelocations
  # GET /venuelocations.json
  def index
    @venuelocations = Venuelocation.all
  end

  # GET /venuelocations/1
  # GET /venuelocations/1.json
  def show
  end

  # GET /venuelocations/new
  def new
    @venuelocation = Venuelocation.new
  end

  # GET /venuelocations/1/edit
  def edit
  end

  # POST /venuelocations
  # POST /venuelocations.json
  def create
    @venuelocation = Venuelocation.new(venuelocation_params)

    respond_to do |format|
      if @venuelocation.save
        format.html { redirect_to @venuelocation, notice: 'Venuelocation was successfully created.' }
        format.json { render :show, status: :created, location: @venuelocation }
      else
        format.html { render :new }
        format.json { render json: @venuelocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venuelocations/1
  # PATCH/PUT /venuelocations/1.json
  def update
    respond_to do |format|
      if @venuelocation.update(venuelocation_params)
        format.html { redirect_to @venuelocation, notice: 'Venuelocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @venuelocation }
      else
        format.html { render :edit }
        format.json { render json: @venuelocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venuelocations/1
  # DELETE /venuelocations/1.json
  def destroy
    @venuelocation.destroy
    respond_to do |format|
      format.html { redirect_to venuelocations_url, notice: 'Venuelocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venuelocation
      @venuelocation = Venuelocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venuelocation_params
      params.require(:venuelocation).permit(:venueadd1, :venueadd2, :venuecity, :venuestate, :venuepostal, :venuecountry, :venuelanguage)
    end
end
