class Serie < ActiveRecord::Base
	belongs_to :user
	belongs_to :exercise
	has_and_belongs_to_many :trainings, join_table: :trainings_series
end
