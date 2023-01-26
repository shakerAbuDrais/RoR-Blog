# frozen_string_literal: true

# This is the migration for the likes table.
class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :authorid
      t.integer :postid

      t.timestamps
    end
  end
end
