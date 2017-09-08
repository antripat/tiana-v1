class JsoncallworddataController < ApplicationController
  before_action :set_jsoncallworddatum, only: [:show, :edit, :update, :destroy]

  # GET /jsoncallworddata
  # GET /jsoncallworddata.json
  def index
    @jsoncallworddata = Jsoncallworddatum.all
  end

  # GET /jsoncallworddata/1
  # GET /jsoncallworddata/1.json
  def show
  end

  # GET /jsoncallworddata/new
  def new
    @jsoncallworddatum = Jsoncallworddatum.new
  end

  # GET /jsoncallworddata/1/edit
  def edit
  end

  # POST /jsoncallworddata
  # POST /jsoncallworddata.json
  def create
    @jsoncallworddatum = Jsoncallworddatum.new(jsoncallworddatum_params)

    respond_to do |format|
      if @jsoncallworddatum.save
        format.html { redirect_to @jsoncallworddatum, notice: 'Jsoncallworddatum was successfully created.' }
        format.json { render :show, status: :created, location: @jsoncallworddatum }
      else
        format.html { render :new }
        format.json { render json: @jsoncallworddatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jsoncallworddata/1
  # PATCH/PUT /jsoncallworddata/1.json
  def update
    respond_to do |format|
      if @jsoncallworddatum.update(jsoncallworddatum_params)
        format.html { redirect_to @jsoncallworddatum, notice: 'Jsoncallworddatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @jsoncallworddatum }
      else
        format.html { render :edit }
        format.json { render json: @jsoncallworddatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jsoncallworddata/1
  # DELETE /jsoncallworddata/1.json
  def destroy
    @jsoncallworddatum.destroy
    respond_to do |format|
      format.html { redirect_to jsoncallworddata_url, notice: 'Jsoncallworddatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jsoncallworddatum
      @jsoncallworddatum = Jsoncallworddatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jsoncallworddatum_params
      params.require(:jsoncallworddatum).permit(:Keyword, :FileName, :startTime, :endTime, :speakerType, :gender, :confidence, :score, :wordSeq, :–no-migration)
    end
end
