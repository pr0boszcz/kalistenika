class Exercise < ActiveRecord::Base
  has_and_belongs_to_many :exercises_groups, join_table: :exercise_exercises_group
	belongs_to :user
end
