class Visit < ActiveRecord::Base
	monetize :price_cents

	belongs_to :admin

	before_create :set_defaults

	# CURRENCIES = %w(AUD USD EUR CNY HKD NZD AED INR GBP AED RUB)

	def total_score
		ambience + tea + sweets + savoury + service + bonus + scones
	end

	def formatted_date	
		self.date.strftime "%m-%Y"
	end

private 

	def set_defaults
		ambience = 0
		tea = 0
		sweets = 0
		savoury = 0
		service = 0
		bonus = 0
		scones = 0
	end
end


