class CreateUserChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :user_challenges do |t|
      t.integer :user_id
      t.integer :challenger_id
      t.string :result

      t.timestamps
    end
  end
end
