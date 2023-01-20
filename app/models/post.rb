# frozen_string_literal: true

# This is the post class.
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
end
