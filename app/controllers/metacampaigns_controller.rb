class MetacampaignsController < ApplicationController
  before_action :set_metacampaign, only: [:show, :edit, :update, :destroy]

  # GET /metacampaigns
  # GET /metacampaigns.json
  def index
    @metacampaigns = Metacampaign.all
  end

  # GET /metacampaigns/1
  # GET /metacampaigns/1.json
  def show
  end

  # GET /metacampaigns/new
  def new
    @metacampaign = Metacampaign.new
  end

  # GET /metacampaigns/1/edit
  def edit
  end

  # POST /metacampaigns
  # POST /metacampaigns.json
  def create
    @metacampaign = Metacampaign.new(metacampaign_params)

    respond_to do |format|
      if @metacampaign.save
        format.html { redirect_to @metacampaign, notice: 'Metacampaign was successfully created.' }
        format.json { render :show, status: :created, location: @metacampaign }
      else
        format.html { render :new }
        format.json { render json: @metacampaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metacampaigns/1
  # PATCH/PUT /metacampaigns/1.json
  def update
    respond_to do |format|
      if @metacampaign.update(metacampaign_params)
        format.html { redirect_to @metacampaign, notice: 'Metacampaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @metacampaign }
      else
        format.html { render :edit }
        format.json { render json: @metacampaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metacampaigns/1
  # DELETE /metacampaigns/1.json
  def destroy
    @metacampaign.destroy
    respond_to do |format|
      format.html { redirect_to metacampaigns_url, notice: 'Metacampaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metacampaign
      @metacampaign = Metacampaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metacampaign_params
      params.require(:metacampaign).permit(:campaignName, :–no-migration)
    end
end
