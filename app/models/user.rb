class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

#	setup of stripe association
#	user has will make only one payment
	has_one :payment

#	associate many images to the user
	has_many :images

#when user signs up will be handle registration new form, will hit payment and users payment
	accepts_nested_attributes_for :payment

end
