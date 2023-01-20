# frozen_string_literal: true

# This is the base class for all models in the application.
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
