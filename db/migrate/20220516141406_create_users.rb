class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table 'users', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
      t.string 'name',         null: false, default: '', limit: 30
      t.string 'display_name', null: false, default: '', limit: 15
      t.text   'introduction', limit: 2_048
      t.timestamps
    end
  end
end
