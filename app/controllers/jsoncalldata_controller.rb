class JsoncalldataController < ApplicationController
  before_action :set_jsoncalldatum, only: [:show, :edit, :update, :destroy]

  # GET /jsoncalldata
  # GET /jsoncalldata.json
  def index
    @jsoncalldata = Jsoncalldatum.all
  end

  # GET /jsoncalldata/1
  # GET /jsoncalldata/1.json
  def show
  end

  # GET /jsoncalldata/new
  def new
    @jsoncalldatum = Jsoncalldatum.new
  end

  # GET /jsoncalldata/1/edit
  def edit
  end

  # POST /jsoncalldata
  # POST /jsoncalldata.json
  def create
    @jsoncalldatum = Jsoncalldatum.new(jsoncalldatum_params)

    respond_to do |format|
      if @jsoncalldatum.save
        format.html { redirect_to @jsoncalldatum, notice: 'Jsoncalldatum was successfully created.' }
        format.json { render :show, status: :created, location: @jsoncalldatum }
      else
        format.html { render :new }
        format.json { render json: @jsoncalldatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jsoncalldata/1
  # PATCH/PUT /jsoncalldata/1.json
  def update
    respond_to do |format|
      if @jsoncalldatum.update(jsoncalldatum_params)
        format.html { redirect_to @jsoncalldatum, notice: 'Jsoncalldatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @jsoncalldatum }
      else
        format.html { render :edit }
        format.json { render json: @jsoncalldatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jsoncalldata/1
  # DELETE /jsoncalldata/1.json
  def destroy
    @jsoncalldatum.destroy
    respond_to do |format|
      format.html { redirect_to jsoncalldata_url, notice: 'Jsoncalldatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jsoncalldatum
      @jsoncalldatum = Jsoncalldatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jsoncalldatum_params
      params.require(:jsoncalldatum).permit(:FileId, :callDuration, :nonTalkTime, :–no-migration)
    end
end
