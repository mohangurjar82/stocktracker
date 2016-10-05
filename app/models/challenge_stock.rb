class ChallengeStock < ApplicationRecord
	belongs_to :user_challenge
	belongs_to :stock, :class_name => 'Stock'
end
