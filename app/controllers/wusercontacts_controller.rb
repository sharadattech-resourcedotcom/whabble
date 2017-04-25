class WusercontactsController < ApplicationController
  before_action :set_wusercontact, only: [:show, :edit, :update, :destroy]

  # GET /wusercontacts
  # GET /wusercontacts.json
  def index
    @wusercontacts = Wusercontact.all
  end

  # GET /wusercontacts/1
  # GET /wusercontacts/1.json
  def show
  end

  # GET /wusercontacts/new
  def new
    @wusercontact = Wusercontact.new
  end

  # GET /wusercontacts/1/edit
  def edit
  end

  # POST /wusercontacts
  # POST /wusercontacts.json
  def create
    @wusercontact = Wusercontact.new(wusercontact_params)

    respond_to do |format|
      if @wusercontact.save
        format.html { redirect_to @wusercontact, notice: 'Wusercontact was successfully created.' }
        format.json { render :show, status: :created, location: @wusercontact }
      else
        format.html { render :new }
        format.json { render json: @wusercontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wusercontacts/1
  # PATCH/PUT /wusercontacts/1.json
  def update
    respond_to do |format|
      if @wusercontact.update(wusercontact_params)
        format.html { redirect_to @wusercontact, notice: 'Wusercontact was successfully updated.' }
        format.json { render :show, status: :ok, location: @wusercontact }
      else
        format.html { render :edit }
        format.json { render json: @wusercontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wusercontacts/1
  # DELETE /wusercontacts/1.json
  def destroy
    @wusercontact.destroy
    respond_to do |format|
      format.html { redirect_to wusercontacts_url, notice: 'Wusercontact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wusercontact
      @wusercontact = Wusercontact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wusercontact_params
      params.require(:wusercontact).permit(:wuseradd1, :wuseradd2, :wusercity, :wuserstate, :wuserpostal, :wuserphone)
    end
end
