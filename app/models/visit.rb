class Visit < ActiveRecord::Base

	
	monetize :price_cents


	before_create :set_defaults

	belongs_to :admin


	CURRENCIES = %w(AUD USD EUR CNY HKD NZD AED INR GBP AED RUB)

	composed_of :price,
              :class_name => "Money",
              :mapping => [%w(price_cents cents), %w(price_currency currency_as_string)],
              :constructor => Proc.new { |cents, currency| Money.new(cents || 0, currency || Money.default_currency) },
              :converter => Proc.new { |value| value.respond_to?(:to_money) ? value.to_money : raise(ArgumentError, "Can't convert #{value.class} to Money") }


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


	def price
		# Money.new price_cents, price_currency

	end

end


