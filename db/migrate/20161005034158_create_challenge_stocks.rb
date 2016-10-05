class CreateChallengeStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :challenge_stocks do |t|
      t.integer :user_challenge_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
