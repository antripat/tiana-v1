class MetamediatypesController < ApplicationController
  before_action :set_metamediatype, only: [:show, :edit, :update, :destroy]

  # GET /metamediatypes
  # GET /metamediatypes.json
  def index
    @metamediatypes = Metamediatype.all
  end

  # GET /metamediatypes/1
  # GET /metamediatypes/1.json
  def show
  end

  # GET /metamediatypes/new
  def new
    @metamediatype = Metamediatype.new
  end

  # GET /metamediatypes/1/edit
  def edit
  end

  # POST /metamediatypes
  # POST /metamediatypes.json
  def create
    @metamediatype = Metamediatype.new(metamediatype_params)

    respond_to do |format|
      if @metamediatype.save
        format.html { redirect_to @metamediatype, notice: 'Metamediatype was successfully created.' }
        format.json { render :show, status: :created, location: @metamediatype }
      else
        format.html { render :new }
        format.json { render json: @metamediatype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metamediatypes/1
  # PATCH/PUT /metamediatypes/1.json
  def update
    respond_to do |format|
      if @metamediatype.update(metamediatype_params)
        format.html { redirect_to @metamediatype, notice: 'Metamediatype was successfully updated.' }
        format.json { render :show, status: :ok, location: @metamediatype }
      else
        format.html { render :edit }
        format.json { render json: @metamediatype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metamediatypes/1
  # DELETE /metamediatypes/1.json
  def destroy
    @metamediatype.destroy
    respond_to do |format|
      format.html { redirect_to metamediatypes_url, notice: 'Metamediatype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metamediatype
      @metamediatype = Metamediatype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metamediatype_params
      params.require(:metamediatype).permit(:mediaTypeName, :–no-migration)
    end
end
