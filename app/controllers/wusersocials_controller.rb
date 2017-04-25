class WusersocialsController < ApplicationController
  before_action :set_wusersocial, only: [:show, :edit, :update, :destroy]

  # GET /wusersocials
  # GET /wusersocials.json
  def index
    @wusersocials = Wusersocial.all
  end

  # GET /wusersocials/1
  # GET /wusersocials/1.json
  def show
  end

  # GET /wusersocials/new
  def new
    @wusersocial = Wusersocial.new
  end

  # GET /wusersocials/1/edit
  def edit
  end

  # POST /wusersocials
  # POST /wusersocials.json
  def create
    @wusersocial = Wusersocial.new(wusersocial_params)

    respond_to do |format|
      if @wusersocial.save
        format.html { redirect_to @wusersocial, notice: 'Wusersocial was successfully created.' }
        format.json { render :show, status: :created, location: @wusersocial }
      else
        format.html { render :new }
        format.json { render json: @wusersocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wusersocials/1
  # PATCH/PUT /wusersocials/1.json
  def update
    respond_to do |format|
      if @wusersocial.update(wusersocial_params)
        format.html { redirect_to @wusersocial, notice: 'Wusersocial was successfully updated.' }
        format.json { render :show, status: :ok, location: @wusersocial }
      else
        format.html { render :edit }
        format.json { render json: @wusersocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wusersocials/1
  # DELETE /wusersocials/1.json
  def destroy
    @wusersocial.destroy
    respond_to do |format|
      format.html { redirect_to wusersocials_url, notice: 'Wusersocial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wusersocial
      @wusersocial = Wusersocial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wusersocial_params
      params.require(:wusersocial).permit(:wuserfb, :wusertwitter, :wusergp)
    end
end
