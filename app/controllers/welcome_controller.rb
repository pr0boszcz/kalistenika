class WelcomeController < ApplicationController
  respond_to :html
  def index
    @exercises = Exercise.all
    @trainings = Training.all
    @plans = Plan.all
    @series = Serie.all
  end
end
