class MetatransferindicatorsController < ApplicationController
  before_action :set_metatransferindicator, only: [:show, :edit, :update, :destroy]

  # GET /metatransferindicators
  # GET /metatransferindicators.json
  def index
    @metatransferindicators = Metatransferindicator.all
  end

  # GET /metatransferindicators/1
  # GET /metatransferindicators/1.json
  def show
  end

  # GET /metatransferindicators/new
  def new
    @metatransferindicator = Metatransferindicator.new
  end

  # GET /metatransferindicators/1/edit
  def edit
  end

  # POST /metatransferindicators
  # POST /metatransferindicators.json
  def create
    @metatransferindicator = Metatransferindicator.new(metatransferindicator_params)

    respond_to do |format|
      if @metatransferindicator.save
        format.html { redirect_to @metatransferindicator, notice: 'Metatransferindicator was successfully created.' }
        format.json { render :show, status: :created, location: @metatransferindicator }
      else
        format.html { render :new }
        format.json { render json: @metatransferindicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metatransferindicators/1
  # PATCH/PUT /metatransferindicators/1.json
  def update
    respond_to do |format|
      if @metatransferindicator.update(metatransferindicator_params)
        format.html { redirect_to @metatransferindicator, notice: 'Metatransferindicator was successfully updated.' }
        format.json { render :show, status: :ok, location: @metatransferindicator }
      else
        format.html { render :edit }
        format.json { render json: @metatransferindicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metatransferindicators/1
  # DELETE /metatransferindicators/1.json
  def destroy
    @metatransferindicator.destroy
    respond_to do |format|
      format.html { redirect_to metatransferindicators_url, notice: 'Metatransferindicator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metatransferindicator
      @metatransferindicator = Metatransferindicator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metatransferindicator_params
      params.require(:metatransferindicator).permit(:transferIndicatorName, :–no-migration)
    end
end
