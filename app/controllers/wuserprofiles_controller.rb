class WuserprofilesController < ApplicationController
  before_action :set_wuserprofile, only: [:show, :edit, :update, :destroy]

  # GET /wuserprofiles
  # GET /wuserprofiles.json
  def index
    @wuserprofiles = Wuserprofile.all
  end

  # GET /wuserprofiles/1
  # GET /wuserprofiles/1.json
  def show
  end

  # GET /wuserprofiles/new
  def new
    @wuserprofile = Wuserprofile.new
  end

  # GET /wuserprofiles/1/edit
  def edit
  end

  # POST /wuserprofiles
  # POST /wuserprofiles.json
  def create
    @wuserprofile = Wuserprofile.new(wuserprofile_params)

    respond_to do |format|
      if @wuserprofile.save
        format.html { redirect_to @wuserprofile, notice: 'Wuserprofile was successfully created.' }
        format.json { render :show, status: :created, location: @wuserprofile }
      else
        format.html { render :new }
        format.json { render json: @wuserprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wuserprofiles/1
  # PATCH/PUT /wuserprofiles/1.json
  def update
    respond_to do |format|
      if @wuserprofile.update(wuserprofile_params)
        format.html { redirect_to @wuserprofile, notice: 'Wuserprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @wuserprofile }
      else
        format.html { render :edit }
        format.json { render json: @wuserprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wuserprofiles/1
  # DELETE /wuserprofiles/1.json
  def destroy
    @wuserprofile.destroy
    respond_to do |format|
      format.html { redirect_to wuserprofiles_url, notice: 'Wuserprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wuserprofile
      @wuserprofile = Wuserprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wuserprofile_params
      params.require(:wuserprofile).permit(:wusername, :wuserfirst, :wuserlast, :wuseremail)
    end
end
