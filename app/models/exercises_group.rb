class ExercisesGroup < ActiveRecord::Base
	has_and_belongs_to_many :exercises, join_table: :exercise_exercises_group
	belongs_to :user
	#has_many :images
end
