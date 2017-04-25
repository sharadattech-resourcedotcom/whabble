class WuserbusinessesController < ApplicationController
  before_action :set_wuserbusiness, only: [:show, :edit, :update, :destroy]

  # GET /wuserbusinesses
  # GET /wuserbusinesses.json
  def index
    @wuserbusinesses = Wuserbusiness.all
  end

  # GET /wuserbusinesses/1
  # GET /wuserbusinesses/1.json
  def show
  end

  # GET /wuserbusinesses/new
  def new
    @wuserbusiness = Wuserbusiness.new
  end

  # GET /wuserbusinesses/1/edit
  def edit
  end

  # POST /wuserbusinesses
  # POST /wuserbusinesses.json
  def create
    @wuserbusiness = Wuserbusiness.new(wuserbusiness_params)

    respond_to do |format|
      if @wuserbusiness.save
        format.html { redirect_to @wuserbusiness, notice: 'Wuserbusiness was successfully created.' }
        format.json { render :show, status: :created, location: @wuserbusiness }
      else
        format.html { render :new }
        format.json { render json: @wuserbusiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wuserbusinesses/1
  # PATCH/PUT /wuserbusinesses/1.json
  def update
    respond_to do |format|
      if @wuserbusiness.update(wuserbusiness_params)
        format.html { redirect_to @wuserbusiness, notice: 'Wuserbusiness was successfully updated.' }
        format.json { render :show, status: :ok, location: @wuserbusiness }
      else
        format.html { render :edit }
        format.json { render json: @wuserbusiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wuserbusinesses/1
  # DELETE /wuserbusinesses/1.json
  def destroy
    @wuserbusiness.destroy
    respond_to do |format|
      format.html { redirect_to wuserbusinesses_url, notice: 'Wuserbusiness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wuserbusiness
      @wuserbusiness = Wuserbusiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wuserbusiness_params
      params.require(:wuserbusiness).permit(:Wuserco, :wusercoadd1, :wusercoadd2, :wusercocity, :wusercostate, :wusercopostal, :wusercophone, :wusercoemail, :wusercotitle)
    end
end
