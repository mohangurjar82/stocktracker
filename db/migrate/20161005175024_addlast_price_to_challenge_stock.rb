class AddlastPriceToChallengeStock < ActiveRecord::Migration[5.0]
  def change
  	add_column :challenge_stocks, :last_price, :float
  end
end
