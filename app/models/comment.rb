# This is the base class for all models in the application.
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_comments_counter
    update(commentsCounter: comments.count)
  end
end
