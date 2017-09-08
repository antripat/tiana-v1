class MetaclientsController < ApplicationController
  before_action :set_metaclient, only: [:show, :edit, :update, :destroy]

  # GET /metaclients
  # GET /metaclients.json
  def index
    @metaclients = Metaclient.all
  end

  # GET /metaclients/1
  # GET /metaclients/1.json
  def show
  end

  # GET /metaclients/new
  def new
    @metaclient = Metaclient.new
  end

  # GET /metaclients/1/edit
  def edit
  end

  # POST /metaclients
  # POST /metaclients.json
  def create
    @metaclient = Metaclient.new(metaclient_params)

    respond_to do |format|
      if @metaclient.save
        format.html { redirect_to @metaclient, notice: 'Metaclient was successfully created.' }
        format.json { render :show, status: :created, location: @metaclient }
      else
        format.html { render :new }
        format.json { render json: @metaclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metaclients/1
  # PATCH/PUT /metaclients/1.json
  def update
    respond_to do |format|
      if @metaclient.update(metaclient_params)
        format.html { redirect_to @metaclient, notice: 'Metaclient was successfully updated.' }
        format.json { render :show, status: :ok, location: @metaclient }
      else
        format.html { render :edit }
        format.json { render json: @metaclient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metaclients/1
  # DELETE /metaclients/1.json
  def destroy
    @metaclient.destroy
    respond_to do |format|
      format.html { redirect_to metaclients_url, notice: 'Metaclient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metaclient
      @metaclient = Metaclient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metaclient_params
      params.require(:metaclient).permit(:fromAddr, :toAddr, :–no-migration)
    end
end
