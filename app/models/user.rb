require_relative 'application_record'

# This is the user class.
class User < ApplicationRecord
  validates :name, presence: true
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  has_many :posts, foreign_key: 'authorid'
  has_many :comments, foreign_key: 'authorid'
  has_many :likes, foreign_key: 'authorid'

  def recent_posts
    Post.where(authorid: id).order('created_at DESC').limit(3)
  end
end
