# frozen_string_literal: true

# This is the migration for the comments table.
class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :authorid
      t.integer :postid
      t.text :text

      t.timestamps
    end
  end
end
