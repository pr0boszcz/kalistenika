class Plan < ActiveRecord::Base
	has_many :trainings, through: :training_days
  has_many :training_days, dependent: :destroy
  #accepts_nested_attributes_for :training_days
	belongs_to :user
end
