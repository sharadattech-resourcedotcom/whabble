class WeventsController < ApplicationController
  before_action :set_wevent, only: [:show, :edit, :update, :destroy]

  # GET /wevents
  # GET /wevents.json
  def index
    @wevents = Wevent.all
  end

  # GET /wevents/1
  # GET /wevents/1.json
  def show
  end

  # GET /wevents/new
  def new
    @wevent = Wevent.new
  end

  # GET /wevents/1/edit
  def edit
  end

  # POST /wevents
  # POST /wevents.json
  def create
    @wevent = Wevent.new(wevent_params)

    respond_to do |format|
      if @wevent.save
        format.html { redirect_to @wevent, notice: 'Wevent was successfully created.' }
        format.json { render :show, status: :created, location: @wevent }
      else
        format.html { render :new }
        format.json { render json: @wevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wevents/1
  # PATCH/PUT /wevents/1.json
  def update
    respond_to do |format|
      if @wevent.update(wevent_params)
        format.html { redirect_to @wevent, notice: 'Wevent was successfully updated.' }
        format.json { render :show, status: :ok, location: @wevent }
      else
        format.html { render :edit }
        format.json { render json: @wevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wevents/1
  # DELETE /wevents/1.json
  def destroy
    @wevent.destroy
    respond_to do |format|
      format.html { redirect_to wevents_url, notice: 'Wevent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wevent
      @wevent = Wevent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wevent_params
      params.require(:wevent).permit(:weventname, :weventdesc, :weventstart, :weventstop, :weventcat, :weventtype, :weventrepeat, :weventprivate, :weventbusy)
    end
end
