class User < ApplicationRecord
	# Include default devise modules.
	# devise :database_authenticatable, :registerable,
	#       :recoverable, :rememberable, :trackable, :validatable,
	#       :confirmable, :omniauthable
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable
	include DeviseTokenAuth::Concerns::User

	has_many :gains, dependent: :destroy
  	has_many :expenses, dependent: :destroy
end
