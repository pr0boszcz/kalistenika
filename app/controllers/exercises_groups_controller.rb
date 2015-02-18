class ExercisesGroupsController < ApplicationController
  before_action :set_exercises_group, only: [:show, :edit, :update, :destroy]

  # GET /exercises_groups
  # GET /exercises_groups.json
  def index
    @exercises_groups = ExercisesGroup.all
  end

  # GET /exercises_groups/1
  # GET /exercises_groups/1.json
  def show
  end

  # GET /exercises_groups/new
  def new
    @exercises_group = ExercisesGroup.new
  end

  # GET /exercises_groups/1/edit
  def edit
  end

  # POST /exercises_groups
  # POST /exercises_groups.json
  def create
    @exercises_group = ExercisesGroup.new(exercises_group_params)

    respond_to do |format|
      if @exercises_group.save
        format.html { redirect_to @exercises_group, notice: 'Exercises group was successfully created.' }
        format.json { render :show, status: :created, location: @exercises_group }
      else
        format.html { render :new }
        format.json { render json: @exercises_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercises_groups/1
  # PATCH/PUT /exercises_groups/1.json
  def update
    respond_to do |format|
      if @exercises_group.update(exercises_group_params)
        format.html { redirect_to @exercises_group, notice: 'Exercises group was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercises_group }
      else
        format.html { render :edit }
        format.json { render json: @exercises_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises_groups/1
  # DELETE /exercises_groups/1.json
  def destroy
    @exercises_group.destroy
    respond_to do |format|
      format.html { redirect_to exercises_groups_url, notice: 'Exercises group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercises_group
      @exercises_group = ExercisesGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercises_group_params
      params.require(:exercises_group).permit(:name, :description)
    end
end
