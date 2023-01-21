# This is the post class.
class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
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
