class TrainingDay < ActiveRecord::Base
  belongs_to :training
  belongs_to :plan
  #accepts_nested_attributes_for :trainings
end