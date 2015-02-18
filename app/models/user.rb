class User < ActiveRecord::Base
	has_many :series
	has_many :plans
	has_many :excersises_groups
	has_many :excersises, through: :excersises_groups
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
