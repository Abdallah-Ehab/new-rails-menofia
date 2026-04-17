class User < ApplicationRecord
  validate :name, presence: true
  validate :dob, presence: true
  validate :phone, presence: true
  validate :email, presence: true,
            format: { with: URI::MailTo::EMAIL_REGEXP,
            message: "must be a valid email address" }
end
