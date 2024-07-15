# frozen_string_literal: true

class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create google_auth]

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  def google_auth
    auth = request.env['omniauth.auth']
    Rails.logger.info("OmniAuth auth hash: #{auth.inspect}")

    user = User.find_by(email: auth['info']['email'])
    Rails.logger.info("Found user: #{user.inspect}")

    if user.nil?
      generated_password = SecureRandom.hex(10)
      user = User.create!(
        provider: auth['provider'],
        uid: auth['uid'],
        email: auth['info']['email'],
        name: auth['info']['name'],
        password: generated_password,
        password_confirmation: generated_password
      )
      Rails.logger.info("Created new user: #{user.inspect}")
    end

    auto_login(user)
    Rails.logger.info("User logged in: #{user.inspect}")
    redirect_to root_path, notice: 'Googleアカウントでログインしました'
  rescue StandardError => e
    Rails.logger.error("Error during Google authentication: #{e.message}")
    Rails.logger.error("Auth Object: #{auth.inspect}")
    Rails.logger.error(e.backtrace.join("\n"))
    redirect_to root_path, alert: 'ログインに失敗しました'
  end

end
