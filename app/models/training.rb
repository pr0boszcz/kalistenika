class Training < ActiveRecord::Base
	has_and_belongs_to_many :series, join_table: :trainings_series, inverse_of: :training
  has_many :training_days
  has_many :plans, through: :training_days
	has_many :exercises, through: :series
  validates :name, presence: true

end
