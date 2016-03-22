class Payment < ActiveRecord::Base

#	setup credit card attributes required for payment
	attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year

#	stripe setup to user model
	belongs_to :user

#	set up month for display
	def self.month_options
		Date::MONTHNAMES.compact.each_with_index.map { |name, i| ["#{i+1} - #{name}", i+1]}
	end

#	setup up year from today plus 10 years
	def self.year_options
		(Date.today.year..(Date.today.year+10)).to_a
	end

	#	setup payment for plan Premium
	def process_payment
		customer = Stripe::Customer.create email: email, card: token
		Stripe::Charge.create customer: customer.id, amount: 1000, description: 'Premium', currency: 'USD'
	end
end
