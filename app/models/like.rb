# frozen_string_literal: true

# This is the like class.
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
