class MetacallstatsController < ApplicationController
  before_action :set_metacallstat, only: [:show, :edit, :update, :destroy]

  # GET /metacallstats
  # GET /metacallstats.json
  def index
    @metacallstats = Metacallstat.all
  end

  # GET /metacallstats/1
  # GET /metacallstats/1.json
  def show
  end

  # GET /metacallstats/new
  def new
    @metacallstat = Metacallstat.new
  end

  # GET /metacallstats/1/edit
  def edit
  end

  # POST /metacallstats
  # POST /metacallstats.json
  def create
    @metacallstat = Metacallstat.new(metacallstat_params)

    respond_to do |format|
      if @metacallstat.save
        format.html { redirect_to @metacallstat, notice: 'Metacallstat was successfully created.' }
        format.json { render :show, status: :created, location: @metacallstat }
      else
        format.html { render :new }
        format.json { render json: @metacallstat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metacallstats/1
  # PATCH/PUT /metacallstats/1.json
  def update
    respond_to do |format|
      if @metacallstat.update(metacallstat_params)
        format.html { redirect_to @metacallstat, notice: 'Metacallstat was successfully updated.' }
        format.json { render :show, status: :ok, location: @metacallstat }
      else
        format.html { render :edit }
        format.json { render json: @metacallstat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metacallstats/1
  # DELETE /metacallstats/1.json
  def destroy
    @metacallstat.destroy
    respond_to do |format|
      format.html { redirect_to metacallstats_url, notice: 'Metacallstat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metacallstat
      @metacallstat = Metacallstat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metacallstat_params
      params.require(:metacallstat).permit(:ID, :abandoned, :abandonSeconds, :ACWSeconds, :agentId, :agentSeconds, :callbackTime, :campaignId, :confSeconds, :contactStart, :dateACWWarehoused, :dateContactWarehoused, :dispositionNotes, :holdCount, :holdSeconds, :NPSscore, :inQueueSeconds, :isLogged, :isOutbound, :isRefused, :isShortAbandon, :isTakeover, :lastUpdateTime, :mediaType, :pointOfContactId, :postQueueSeconds, :preQueueSeconds, :primaryDispositionId, :refuseReason, :refuseTime, :releaseSeconds, :routingTime, :secondaryDispositionId, :serviceLevelFlag, :skillId, :totalDurationSeconds, :transferIndicatorId, :–no-migration)
    end
end
