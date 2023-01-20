# This migration comes from social_network (originally 20230120223351)
class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :authorid
      t.string :title
      t.text :text
      t.datetime :createdat
      t.datetime :updatedat
      t.integer :commentsCounter
      t.integer :LikesCounter

      t.timestamps
    end
  end
end
