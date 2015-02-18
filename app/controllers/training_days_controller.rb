class TrainingDaysController < ApplicationController
  before_action :set_training_day, only: [:show, :edit, :update, :destroy]

  def index
    @training_days = TrainingDay.all
    respond_with(@training_days)
  end

  def show
    respond_with(@training_day)
  end

  def new
    @training_day = TrainingDay.new
    respond_with(@training_day)
  end

  def edit
  end

  def create
    @training_day = TrainingDay.new(training_day_params)
    @training_day.save
    respond_with(@training_day)
  end

  def update
    @training_day.update(training_day_params)
    respond_with(@training_day)
  end

  def destroy
    @training_day.destroy
    respond_with(@training_day)
  end

  private
    def set_training_day
      @training_day = TrainingDay.find(params[:id])
    end

    def training_day_params
      params.require(:training_day).permit(:date)
    end
end
