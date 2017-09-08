class MetacontactidsController < ApplicationController
  before_action :set_metacontactid, only: [:show, :edit, :update, :destroy]

  # GET /metacontactids
  # GET /metacontactids.json
  def index
    @metacontactids = Metacontactid.all
  end

  # GET /metacontactids/1
  # GET /metacontactids/1.json
  def show
  end

  # GET /metacontactids/new
  def new
    @metacontactid = Metacontactid.new
  end

  # GET /metacontactids/1/edit
  def edit
  end

  # POST /metacontactids
  # POST /metacontactids.json
  def create
    @metacontactid = Metacontactid.new(metacontactid_params)

    respond_to do |format|
      if @metacontactid.save
        format.html { redirect_to @metacontactid, notice: 'Metacontactid was successfully created.' }
        format.json { render :show, status: :created, location: @metacontactid }
      else
        format.html { render :new }
        format.json { render json: @metacontactid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metacontactids/1
  # PATCH/PUT /metacontactids/1.json
  def update
    respond_to do |format|
      if @metacontactid.update(metacontactid_params)
        format.html { redirect_to @metacontactid, notice: 'Metacontactid was successfully updated.' }
        format.json { render :show, status: :ok, location: @metacontactid }
      else
        format.html { render :edit }
        format.json { render json: @metacontactid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metacontactids/1
  # DELETE /metacontactids/1.json
  def destroy
    @metacontactid.destroy
    respond_to do |format|
      format.html { redirect_to metacontactids_url, notice: 'Metacontactid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metacontactid
      @metacontactid = Metacontactid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metacontactid_params
      params.require(:metacontactid).permit(:masterContactId, :–no-migration)
    end
end
