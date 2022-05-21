class CreateReplys < ActiveRecord::Migration[7.0]
  def change
    create_table :replys do |t|
      t.text :contents
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
