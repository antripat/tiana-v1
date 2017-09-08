class JsonbeepdataController < ApplicationController
  before_action :set_jsonbeepdatum, only: [:show, :edit, :update, :destroy]

  # GET /jsonbeepdata
  # GET /jsonbeepdata.json
  def index
    @jsonbeepdata = Jsonbeepdatum.all
  end

  # GET /jsonbeepdata/1
  # GET /jsonbeepdata/1.json
  def show
  end

  # GET /jsonbeepdata/new
  def new
    @jsonbeepdatum = Jsonbeepdatum.new
  end

  # GET /jsonbeepdata/1/edit
  def edit
  end

  # POST /jsonbeepdata
  # POST /jsonbeepdata.json
  def create
    @jsonbeepdatum = Jsonbeepdatum.new(jsonbeepdatum_params)

    respond_to do |format|
      if @jsonbeepdatum.save
        format.html { redirect_to @jsonbeepdatum, notice: 'Jsonbeepdatum was successfully created.' }
        format.json { render :show, status: :created, location: @jsonbeepdatum }
      else
        format.html { render :new }
        format.json { render json: @jsonbeepdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jsonbeepdata/1
  # PATCH/PUT /jsonbeepdata/1.json
  def update
    respond_to do |format|
      if @jsonbeepdatum.update(jsonbeepdatum_params)
        format.html { redirect_to @jsonbeepdatum, notice: 'Jsonbeepdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @jsonbeepdatum }
      else
        format.html { render :edit }
        format.json { render json: @jsonbeepdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jsonbeepdata/1
  # DELETE /jsonbeepdata/1.json
  def destroy
    @jsonbeepdatum.destroy
    respond_to do |format|
      format.html { redirect_to jsonbeepdata_url, notice: 'Jsonbeepdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jsonbeepdatum
      @jsonbeepdatum = Jsonbeepdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jsonbeepdatum_params
      params.require(:jsonbeepdatum).permit(:beepSeq, :FileName, :beepDuration)
    end
end
