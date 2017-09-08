class SentitrigramsController < ApplicationController
  before_action :set_sentitrigram, only: [:show, :edit, :update, :destroy]

  # GET /sentitrigrams
  # GET /sentitrigrams.json
  def index
    @sentitrigrams = Sentitrigram.all
  end

  # GET /sentitrigrams/1
  # GET /sentitrigrams/1.json
  def show
  end

  # GET /sentitrigrams/new
  def new
    @sentitrigram = Sentitrigram.new
  end

  # GET /sentitrigrams/1/edit
  def edit
  end

  # POST /sentitrigrams
  # POST /sentitrigrams.json
  def create
    @sentitrigram = Sentitrigram.new(sentitrigram_params)

    respond_to do |format|
      if @sentitrigram.save
        format.html { redirect_to @sentitrigram, notice: 'Sentitrigram was successfully created.' }
        format.json { render :show, status: :created, location: @sentitrigram }
      else
        format.html { render :new }
        format.json { render json: @sentitrigram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentitrigrams/1
  # PATCH/PUT /sentitrigrams/1.json
  def update
    respond_to do |format|
      if @sentitrigram.update(sentitrigram_params)
        format.html { redirect_to @sentitrigram, notice: 'Sentitrigram was successfully updated.' }
        format.json { render :show, status: :ok, location: @sentitrigram }
      else
        format.html { render :edit }
        format.json { render json: @sentitrigram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentitrigrams/1
  # DELETE /sentitrigrams/1.json
  def destroy
    @sentitrigram.destroy
    respond_to do |format|
      format.html { redirect_to sentitrigrams_url, notice: 'Sentitrigram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentitrigram
      @sentitrigram = Sentitrigram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sentitrigram_params
      params.require(:sentitrigram).permit(:FileName, :TriGram, :TriGramScore)
    end
end
