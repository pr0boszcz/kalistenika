class Serie < ActiveRecord::Base
	belongs_to :user
	belongs_to :exercise
	has_and_belongs_to_many :trainings, join_table: :trainings_series

  validates :repeats, :exercise_id, presence: true
  #validates :repeats, uniqueness: {scope: :exercise_id, message: "Serie already exists"}

  accepts_nested_attributes_for :exercise
end
