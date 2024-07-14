# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :distance_logs

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { maximum: 255 }

  def self.from_omniauth(auth)
    Rails.logger.info("Authenticating user with OmniAuth: #{auth.inspect}")

    user = find_or_create_by!(provider: auth['provider'], uid: auth['uid']) do |u|
      u.email = auth['info']['email']
      u.name = auth['info']['name']
      u.password = SecureRandom.hex(10)
      u.password_confirmation = u.password
    end

    Rails.logger.info("Authenticated user: #{user.inspect}")
    user
  rescue StandardError => e
    Rails.logger.error("Error during user authentication from OmniAuth: #{e.message}")
    Rails.logger.error(e.backtrace.join("\n"))
    raise
  end
end
