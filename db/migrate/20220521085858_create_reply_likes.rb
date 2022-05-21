class CreateReplyLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :reply_likes do |t|
      t.integer :user_id
      t.integer :reply_id

      t.timestamps
    end
  end
end
