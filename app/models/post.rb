# frozen_string_literal: true

# This is the post class.
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def update_counter
    user = self.user
    user.update(posts_counter: user.posts.count)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  def update_likes_counter
    update(likes_counter: likes.count)
  end
end
