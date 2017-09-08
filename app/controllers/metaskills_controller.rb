class MetaskillsController < ApplicationController
  before_action :set_metaskill, only: [:show, :edit, :update, :destroy]

  # GET /metaskills
  # GET /metaskills.json
  def index
    @metaskills = Metaskill.all
  end

  # GET /metaskills/1
  # GET /metaskills/1.json
  def show
  end

  # GET /metaskills/new
  def new
    @metaskill = Metaskill.new
  end

  # GET /metaskills/1/edit
  def edit
  end

  # POST /metaskills
  # POST /metaskills.json
  def create
    @metaskill = Metaskill.new(metaskill_params)

    respond_to do |format|
      if @metaskill.save
        format.html { redirect_to @metaskill, notice: 'Metaskill was successfully created.' }
        format.json { render :show, status: :created, location: @metaskill }
      else
        format.html { render :new }
        format.json { render json: @metaskill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metaskills/1
  # PATCH/PUT /metaskills/1.json
  def update
    respond_to do |format|
      if @metaskill.update(metaskill_params)
        format.html { redirect_to @metaskill, notice: 'Metaskill was successfully updated.' }
        format.json { render :show, status: :ok, location: @metaskill }
      else
        format.html { render :edit }
        format.json { render json: @metaskill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metaskills/1
  # DELETE /metaskills/1.json
  def destroy
    @metaskill.destroy
    respond_to do |format|
      format.html { redirect_to metaskills_url, notice: 'Metaskill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metaskill
      @metaskill = Metaskill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metaskill_params
      params.require(:metaskill).permit(:skillName, :–no-migration)
    end
end
