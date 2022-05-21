class CreateFollow < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.integer :following_user_id
      t.integer :followed_user_id

      t.timestamps
    end
  end
end
