class BusinesssocialsController < ApplicationController
  before_action :set_businesssocial, only: [:show, :edit, :update, :destroy]

  # GET /businesssocials
  # GET /businesssocials.json
  def index
    @businesssocials = Businesssocial.all
  end

  # GET /businesssocials/1
  # GET /businesssocials/1.json
  def show
  end

  # GET /businesssocials/new
  def new
    @businesssocial = Businesssocial.new
  end

  # GET /businesssocials/1/edit
  def edit
  end

  # POST /businesssocials
  # POST /businesssocials.json
  def create
    @businesssocial = Businesssocial.new(businesssocial_params)

    respond_to do |format|
      if @businesssocial.save
        format.html { redirect_to @businesssocial, notice: 'Businesssocial was successfully created.' }
        format.json { render :show, status: :created, location: @businesssocial }
      else
        format.html { render :new }
        format.json { render json: @businesssocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesssocials/1
  # PATCH/PUT /businesssocials/1.json
  def update
    respond_to do |format|
      if @businesssocial.update(businesssocial_params)
        format.html { redirect_to @businesssocial, notice: 'Businesssocial was successfully updated.' }
        format.json { render :show, status: :ok, location: @businesssocial }
      else
        format.html { render :edit }
        format.json { render json: @businesssocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesssocials/1
  # DELETE /businesssocials/1.json
  def destroy
    @businesssocial.destroy
    respond_to do |format|
      format.html { redirect_to businesssocials_url, notice: 'Businesssocial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_businesssocial
      @businesssocial = Businesssocial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def businesssocial_params
      params.require(:businesssocial).permit(:busfb, :bustwitter, :busgp)
    end
end
