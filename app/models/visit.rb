class Visit < ActiveRecord::Base


	monetize :price_cents, :with_model_currency => :price_currency

	validates_presence_of :tea, :ambience, :sweets, :savoury, :service, :bonus, :scones, :venue, :price
	
	before_create :set_defaults
	before_save :set_total

	belongs_to :admin
	
	scope :top_five, ->(column) { order(column).last(5) }
	
	CURRENCIES = %w(AUD USD EUR CNY HKD NZD AED INR GBP YEN RUB)

	def aud_equivalent

		case price_currency
		when "AUD"
			aud_equivalent = price_cents
		when "USD"
			aud_equivalent = price_cents/0.96
		when "EUR"
			aud_equivalent = price_cents/0.71
		when "CNY"
			aud_equivalent = price_cents/5.88
		when "HKD"
			aud_equivalent = price_cents/7.48
		when "NZD"
			aud_equivalent = price_cents/1.14		
		when "AED"
			aud_equivalent = price_cents/3.59
		when "INR"
			aud_equivalent = price_cents/60
		when "GBP"
			aud_equivalent = price_cents/0.6
		when "YEN"
			aud_equivalent = price_cents/95
		when "RUB"
			aud_equivalent = price_cents/31
		else
			aud_equivalent = price_cents
		end
	
		aud_equivalent.round(0)			

	end

	def total_score
		ambience + tea + sweets + savoury + service + bonus + scones
	end

	def formatted_date	
		self.date.strftime "%m-%Y"
	end

	def to_s
		venue
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
	
	def set_total
		self.total = total_score
	end
end


