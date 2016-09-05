class User < ApplicationRecord

	validates :name, presence: true, length: { maximum: 100 }
	validates :phone_number, presence: true, numericality: true, length: {minimum: 10, maximum: 15}
  validates :email_id, email: true # using gem 'email_validator'

	has_and_belongs_to_many :events

  has_secure_password

end
