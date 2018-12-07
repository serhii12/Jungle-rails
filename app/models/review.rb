# frozen_string_literal: true

class Review < ActiveRecord::Base
  belongs_to :user

  belongs_to :product

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :rating, presence: true
end
