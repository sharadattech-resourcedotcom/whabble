class VenuesocialsController < ApplicationController
  before_action :set_venuesocial, only: [:show, :edit, :update, :destroy]

  # GET /venuesocials
  # GET /venuesocials.json
  def index
    @venuesocials = Venuesocial.all
  end

  # GET /venuesocials/1
  # GET /venuesocials/1.json
  def show
  end

  # GET /venuesocials/new
  def new
    @venuesocial = Venuesocial.new
  end

  # GET /venuesocials/1/edit
  def edit
  end

  # POST /venuesocials
  # POST /venuesocials.json
  def create
    @venuesocial = Venuesocial.new(venuesocial_params)

    respond_to do |format|
      if @venuesocial.save
        format.html { redirect_to @venuesocial, notice: 'Venuesocial was successfully created.' }
        format.json { render :show, status: :created, location: @venuesocial }
      else
        format.html { render :new }
        format.json { render json: @venuesocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venuesocials/1
  # PATCH/PUT /venuesocials/1.json
  def update
    respond_to do |format|
      if @venuesocial.update(venuesocial_params)
        format.html { redirect_to @venuesocial, notice: 'Venuesocial was successfully updated.' }
        format.json { render :show, status: :ok, location: @venuesocial }
      else
        format.html { render :edit }
        format.json { render json: @venuesocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venuesocials/1
  # DELETE /venuesocials/1.json
  def destroy
    @venuesocial.destroy
    respond_to do |format|
      format.html { redirect_to venuesocials_url, notice: 'Venuesocial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venuesocial
      @venuesocial = Venuesocial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venuesocial_params
      params.require(:venuesocial).permit(:venuefb, :venuetwitter, :venuegp)
    end
end
