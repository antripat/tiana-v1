class SentifourgramsController < ApplicationController
  before_action :set_sentifourgram, only: [:show, :edit, :update, :destroy]

  # GET /sentifourgrams
  # GET /sentifourgrams.json
  def index
    @sentifourgrams = Sentifourgram.all
  end

  # GET /sentifourgrams/1
  # GET /sentifourgrams/1.json
  def show
  end

  # GET /sentifourgrams/new
  def new
    @sentifourgram = Sentifourgram.new
  end

  # GET /sentifourgrams/1/edit
  def edit
  end

  # POST /sentifourgrams
  # POST /sentifourgrams.json
  def create
    @sentifourgram = Sentifourgram.new(sentifourgram_params)

    respond_to do |format|
      if @sentifourgram.save
        format.html { redirect_to @sentifourgram, notice: 'Sentifourgram was successfully created.' }
        format.json { render :show, status: :created, location: @sentifourgram }
      else
        format.html { render :new }
        format.json { render json: @sentifourgram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentifourgrams/1
  # PATCH/PUT /sentifourgrams/1.json
  def update
    respond_to do |format|
      if @sentifourgram.update(sentifourgram_params)
        format.html { redirect_to @sentifourgram, notice: 'Sentifourgram was successfully updated.' }
        format.json { render :show, status: :ok, location: @sentifourgram }
      else
        format.html { render :edit }
        format.json { render json: @sentifourgram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentifourgrams/1
  # DELETE /sentifourgrams/1.json
  def destroy
    @sentifourgram.destroy
    respond_to do |format|
      format.html { redirect_to sentifourgrams_url, notice: 'Sentifourgram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentifourgram
      @sentifourgram = Sentifourgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sentifourgram_params
      params.require(:sentifourgram).permit(:FileName, :FourGram, :FourGramScore, :–no-migration)
    end
end
