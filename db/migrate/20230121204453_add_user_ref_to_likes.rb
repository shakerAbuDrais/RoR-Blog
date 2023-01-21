# frozen_string_literal: true

# This is the migration for the likes table.
class AddUserRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :author, null: false, foreign_key: { to_table: 'users' }
  end
end
