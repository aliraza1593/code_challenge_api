class AddUsersToChallenges < ActiveRecord::Migration[7.2]
  def change
    add_reference :challenges, :user, null: false, foreign_key: true
  end
end
