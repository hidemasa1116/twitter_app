# frozen_string_literal: true

create_table 'users', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
  t.string 'name',         null: false, default: '', limit: 30
  t.string 'display_name', null: false, default: '', limit: 15
  t.text   'introduction', limit: 2_048
  t.timestamps
  # t.binary 'icon_url'   
  # t.binary 'header_url'
end

create_table 'posts', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
  t.text     'contents', null: false
  t.timestamps
  t.integer  'user_id', null: false
end

create_table 'replys', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
  t.text     'contents', null: false
  t.timestamps
  t.integer  'post_id',  null: false
  t.integer  'user_id',  null: false
end

create_table 'post_likes', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
  t.integer 'post_id', null: false
  t.integer 'user_id', null: false
  t.timestamps
end

create_table 'reply_likes', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
  t.integer 'reply_id', null: false
  t.integer 'user_id',  null: false
  t.timestamps
end

create_table 'retweets', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
  t.integer 'post_id', null: false
  t.integer 'user_id', null: false
  t.timestamps
end
    
create_table 'follow', unsigned: true, force: :cascade, charset: 'utf8mb4' do |t|
  t.integer 'following_user_id', null: false
  t.integer 'followed_user_id',  null: false
  t.timestamps
end
    
