class TrainingsController < ApplicationController

  respond_to :json, :html
  before_action :set_training, only: [:show, :edit, :update, :destroy]

  def index
    @trainings = Training.all
    respond_with(@trainings)


  end

  def show
    #respond_with(@training)
    respond_to do |format|
      format.html { render html: @training}
      format.json { render json: @training, include: {
        series: {only: [:repeats, :exercise_id], include:{
          exercise: {only: :name}
        }}
        }}
    end
  end

  def new
    @training = Training.new
    respond_with(@training)
  end

  def edit
  end

  def create
    @training = Training.new(name: params[:training][:name], pause: params[:training][:pause])
    params[:training][:series_attributes].each do |serie|
      @training.series << Serie.where(repeats: serie[:repeats], exercise_id: serie[:exercise_id]).first_or_create
    end
    @training.save
    respond_with(@training)
  end

  def update
    @training.update(training_params)
    @training.series = []
    params[:series_attributes].each do |serie|
      @training.series << Serie.where(repeats: serie[:repeats], exercise_id: serie[:exercise_id]).first_or_create
    end
    respond_with(@training)
  end

  def destroy
    @training.destroy
    respond_with(@training)
  end

  private
    def set_training
      @training = Training.find(params[:id])
    end

    def training_params
      params.require(:training).permit(:name, :level, :pause, series_attributes: [:repeats, :exercise_id])
    end

end
