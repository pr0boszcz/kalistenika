class TrainingDay < ActiveRecord::Base
  belongs_to :training
  belongs_to :plan
  validates :training, presence: true
  #accepts_nested_attributes_for :trainings
end