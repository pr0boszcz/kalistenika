class ExercisesGroup < ActiveRecord::Base
	has_and_belongs_to_many :excersises
	belongs_to :user
	#has_many :images
end
