# frozen_string_literal: true

class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews

  before_validation :downcase_email
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

  def self.authenticate_with_credentials(email, password)
    find_user = User.find_by_email(email.downcase)
    true if find_user&.authenticate(password)
  end

  private

  def downcase_email
    self.email = email.downcase unless email.nil?
  end
end
