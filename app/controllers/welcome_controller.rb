class WelcomeController < ApplicationController
  respond_to :html
  def index
    @exercises = Exercise.all.order("name ASC")
    @trainings = Training.all.order("name ASC")
    @plans = Plan.all.order("name ASC")
    @series = Serie.all.sort_by{|ser| ser.exercise.name}
    @exgroups = ExercisesGroup.all
  end
end
