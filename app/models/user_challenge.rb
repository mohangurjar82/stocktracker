class UserChallenge < ApplicationRecord
	belongs_to :user, :foreign_key => "challenger_id"
	belongs_to :challenger, :class_name => 'User'
	has_many :challenge_stocks
	has_many :stocks, through: :challenge_stocks
end
