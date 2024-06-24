# frozen_string_literal: true

class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create google_auth]
  def new;  end

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

    user = User.find_by(email: auth['info']['email'])

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
    end
    auto_login(user)
    redirect_to root_path, notice: 'Googleアカウントでログインしました'
  rescue StandardError => e
    redirect_to root_path, alert: 'ログインに失敗しました'
  end
end
