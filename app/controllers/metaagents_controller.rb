class MetaagentsController < ApplicationController
  before_action :set_metaagent, only: [:show, :edit, :update, :destroy]

  # GET /metaagents
  # GET /metaagents.json
  def index
    @metaagents = Metaagent.all
  end

  # GET /metaagents/1
  # GET /metaagents/1.json
  def show
  end

  # GET /metaagents/new
  def new
    @metaagent = Metaagent.new
  end

  # GET /metaagents/1/edit
  def edit
  end

  # POST /metaagents
  # POST /metaagents.json
  def create
    @metaagent = Metaagent.new(metaagent_params)

    respond_to do |format|
      if @metaagent.save
        format.html { redirect_to @metaagent, notice: 'Metaagent was successfully created.' }
        format.json { render :show, status: :created, location: @metaagent }
      else
        format.html { render :new }
        format.json { render json: @metaagent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metaagents/1
  # PATCH/PUT /metaagents/1.json
  def update
    respond_to do |format|
      if @metaagent.update(metaagent_params)
        format.html { redirect_to @metaagent, notice: 'Metaagent was successfully updated.' }
        format.json { render :show, status: :ok, location: @metaagent }
      else
        format.html { render :edit }
        format.json { render json: @metaagent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metaagents/1
  # DELETE /metaagents/1.json
  def destroy
    @metaagent.destroy
    respond_to do |format|
      format.html { redirect_to metaagents_url, notice: 'Metaagent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metaagent
      @metaagent = Metaagent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metaagent_params
      params.require(:metaagent).permit(:agentId, :firstName, :lastName, :teamId, :teamName, :–no-migration)
    end
end
