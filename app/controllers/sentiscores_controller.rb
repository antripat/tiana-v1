class SentiscoresController < ApplicationController
  before_action :set_sentiscore, only: [:show, :edit, :update, :destroy]
  # GET /sentiscores
  # GET /sentiscores.json
  def index
    @sentiscores = Sentiscore.all
    #create an array of team names to show it in the drop down. the code will change once team table is created
    @teams_array = Metaagent.pluck(:teamName).uniq
    @teams_array_of_hash = []
    i=0
    @teams_array.each {|f| @teams_array_of_hash<< {'id'=>(i+=1).to_s, 'name'=>f}}
    @metaskills = Metaskill.all
    #filter call IDs by call start date
    if params[:start_date]!=nil && params[:end_date]!=nil && params[:start_date]!='' && params[:end_date]!=''
      start_date = DateTime.parse(params[:start_date])
      end_date = DateTime.parse(params[:end_date])
      formatted_start_date = start_date.strftime("%Y-%m-%d %H:%M:%S")
      formatted_end_date = end_date.strftime("%Y-%m-%d %H:%M:%S")
      #formatted_start_date = DateTime.strptime(params[:start_date],"%a %d %b %Y %H %M %S")
      @contactids = Metacallstat.where(skillID: params[:skills]).where("contactStart>=? AND contactStart<= ?", formatted_start_date, formatted_end_date).pluck(:contactId)
    else
      @contactids = Metacallstat.pluck(:contactId)
    end

    @sentiscores = Sentiscore.where(FileName: @contactids.to_a)
    #count calls in each sentiment score category
    @count_senti_score = Sentiscore.where(FileName: @contactids.to_a).group(:SentiScore).count(:FileName)
    #render horizontal stack chart of the number of calls in each sentiment score cateogry
    # @chart = LazyHighCharts::HighChart.new('graph') do |f|
    #   f.chart(defaultSeriesType: "bar", borderColor: '#EBBA95', borderWidth: 2, height: 150, spacing: [0,0,0,0])
    #   f.title(text: 'Customer Sentiment Score')
    #   f.xAxis(categories: "null", reversed: false, labels: {step:1}, visible: false)
    #   f.xAxis(categories: "null",opposite:true, reversed:false, linkedTo:0,labels:{step:1}, visible: false)
    #   f.yAxis(reversedStacks: true, visible: false, maxPadding: 0.00)
    #   f.plotOptions(series: {stacking: "normal", cursor: 'pointer'})
    #   f.series(name: '5', color:'#006203',  data: [count_senti_score[5]])
    #   f.series(name: '4', color: '#0f9200', data: [count_senti_score[4]])
    #   f.series(name: '3', color: '#30cb00', data: [count_senti_score[3]])
    #   f.series(name: '2', color: '#4ae54a',data: [count_senti_score[2]])
    #   f.series(name: '1', color: '#a4fba6', data: [count_senti_score[1]])
    #   f.series(name: '0', color: '#808080', data: [count_senti_score[0]])
    #   f.series(name: '-5', color: '#801717', data: [count_senti_score[-5].to_i.-@], legendIndex: 11)
    #   f.series(name: '-4', color: '#981d1d', data: [count_senti_score[-4].to_i.-@], legendIndex: 10)
    #   f.series(name: '-3', color: '#a01c1c', data: [count_senti_score[-3].to_i.-@], legendIndex: 9)
    #   f.series(name: '-2', color: '#bc2626', data: [count_senti_score[-2].to_i.-@], legendIndex: 8)
    #   f.series(name: '-1', color: '#e12f2f', data: [count_senti_score[-1].to_i.-@])
    #   f.legend(layout: "horizontal", reversed: true, enabled: true)
    # end
    @fourgrams = Sentifourgram.where(FileName: @contactids.to_a).group('FourGram').order('count_FileName DESC').count('FileName')
    @tag_cloud = @fourgrams.map {|k,v|{'text'=>k,'weight'=>v}}

end

def render_phrase
  if params[:start_date]!=nil && params[:end_date]!=nil && params[:start_date]!='' && params[:end_date]!=''
    start_date = DateTime.parse(params[:start_date])
    end_date = DateTime.parse(params[:end_date])
    formatted_start_date = start_date.strftime("%Y-%m-%d %H:%M:%S")
    formatted_end_date = end_date.strftime("%Y-%m-%d %H:%M:%S")
    #formatted_start_date = DateTime.strptime(params[:start_date],"%a %d %b %Y %H %M %S")
    @contactids = Metacallstat.where(skillID: params[:skills]).where("contactStart>=? AND contactStart<= ?", formatted_start_date, formatted_end_date).pluck(:contactId)
  else
    @contactids = Metacallstat.pluck(:contactId)
  end
  @contactids_by_senti_score = Sentiscore.where(FileName: @contactids.to_a).where(SentiScore: params[:senti_score]).pluck(:FileName)
  @fourgrams = Sentifourgram.where(FileName: @contactids_by_senti_score.to_a).group('FourGram').order('count_FileName DESC').count('FileName')
  @tag_cloud_temp = @fourgrams.map {|k,v|{'text'=>k,'weight'=>v}}
  # @tag_cloud_temp = [{text: 'Hello', weight: 1000},{text: 'World!', weight: 1100}]
  render json: {
    tag_cloud_temp: @tag_cloud_temp.to_json
  }
end
  # GET /sentiscores/1
  # GET /sentiscores/1.json
  def show
  end

  # GET /sentiscores/new
  def new
    @sentiscore = Sentiscore.new
  end

  # GET /sentiscores/1/edit
  def edit
  end

  # POST /sentiscores
  # POST /sentiscores.json
  def create
    @sentiscore = Sentiscore.new(sentiscore_params)

    respond_to do |format|
      if @sentiscore.save
        format.html { redirect_to @sentiscore, notice: 'Sentiscore was successfully created.' }
        format.json { render :show, status: :created, location: @sentiscore }
      else
        format.html { render :new }
        format.json { render json: @sentiscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sentiscores/1
  # PATCH/PUT /sentiscores/1.json
  def update
    respond_to do |format|
      if @sentiscore.update(sentiscore_params)
        format.html { redirect_to @sentiscore, notice: 'Sentiscore was successfully updated.' }
        format.json { render :show, status: :ok, location: @sentiscore }
      else
        format.html { render :edit }
        format.json { render json: @sentiscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentiscores/1
  # DELETE /sentiscores/1.json
  def destroy
    @sentiscore.destroynew
    respond_to do |format|
      format.html { redirect_to sentiscores_url, notice: 'Sentiscore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentiscore
      @sentiscore = Sentiscore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sentiscore_params
      params.require(:sentiscore).permit(:SentiScore, :–no-migration)
    end
end
