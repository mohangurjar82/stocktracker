class ChallengeStock < ApplicationRecord
	belongs_to :user_challenge
	belongs_to :stock, :class_name => 'Stock'
	before_create :check_price

	def check_price
		self.last_price = self.stock.price.to_f
	end

end
