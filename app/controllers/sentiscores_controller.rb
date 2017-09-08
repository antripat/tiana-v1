class SentiscoresController < ApplicationController
  before_action :set_sentiscore, only: [:show, :edit, :update, :destroy]

  # GET /sentiscores
  # GET /sentiscores.json
  def index
    @sentiscores = Sentiscore.all
  end

  # GET /sentiscores/1
  # GET /sentiscores/1.json
  def show
  end

  # GET /sentiscores/new
  def new
    @sentiscore = Sentiscore.new
  end

  # GET /sentiscores/1/edit
  def edit
  end

  # POST /sentiscores
  # POST /sentiscores.json
  def create
    @sentiscore = Sentiscore.new(sentiscore_params)

    respond_to do |format|
      if @sentiscore.save
        format.html { redirect_to @sentiscore, notice: 'Sentiscore was successfully created.' }
        format.json { render :show, status: :created, location: @sentiscore }
      else
        format.html { render :new }
        format.json { render json: @sentiscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentiscores/1
  # PATCH/PUT /sentiscores/1.json
  def update
    respond_to do |format|
      if @sentiscore.update(sentiscore_params)
        format.html { redirect_to @sentiscore, notice: 'Sentiscore was successfully updated.' }
        format.json { render :show, status: :ok, location: @sentiscore }
      else
        format.html { render :edit }
        format.json { render json: @sentiscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentiscores/1
  # DELETE /sentiscores/1.json
  def destroy
    @sentiscore.destroy
    respond_to do |format|
      format.html { redirect_to sentiscores_url, notice: 'Sentiscore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentiscore
      @sentiscore = Sentiscore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sentiscore_params
      params.require(:sentiscore).permit(:SentiScore, :–no-migration)
    end
end
