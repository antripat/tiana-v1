class MetapointofcontactsController < ApplicationController
  before_action :set_metapointofcontact, only: [:show, :edit, :update, :destroy]

  # GET /metapointofcontacts
  # GET /metapointofcontacts.json
  def index
    @metapointofcontacts = Metapointofcontact.all
  end

  # GET /metapointofcontacts/1
  # GET /metapointofcontacts/1.json
  def show
  end

  # GET /metapointofcontacts/new
  def new
    @metapointofcontact = Metapointofcontact.new
  end

  # GET /metapointofcontacts/1/edit
  def edit
  end

  # POST /metapointofcontacts
  # POST /metapointofcontacts.json
  def create
    @metapointofcontact = Metapointofcontact.new(metapointofcontact_params)

    respond_to do |format|
      if @metapointofcontact.save
        format.html { redirect_to @metapointofcontact, notice: 'Metapointofcontact was successfully created.' }
        format.json { render :show, status: :created, location: @metapointofcontact }
      else
        format.html { render :new }
        format.json { render json: @metapointofcontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metapointofcontacts/1
  # PATCH/PUT /metapointofcontacts/1.json
  def update
    respond_to do |format|
      if @metapointofcontact.update(metapointofcontact_params)
        format.html { redirect_to @metapointofcontact, notice: 'Metapointofcontact was successfully updated.' }
        format.json { render :show, status: :ok, location: @metapointofcontact }
      else
        format.html { render :edit }
        format.json { render json: @metapointofcontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metapointofcontacts/1
  # DELETE /metapointofcontacts/1.json
  def destroy
    @metapointofcontact.destroy
    respond_to do |format|
      format.html { redirect_to metapointofcontacts_url, notice: 'Metapointofcontact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metapointofcontact
      @metapointofcontact = Metapointofcontact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metapointofcontact_params
      params.require(:metapointofcontact).permit(:pointOfContactName, :–no-migration)
    end
end
