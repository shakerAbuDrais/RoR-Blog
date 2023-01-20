# This migration for creating likes table
class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :authorid
      t.integer :postid
      t.datetime :createdat
      t.datetime :updatedat

      t.timestamps
    end
  end
end
