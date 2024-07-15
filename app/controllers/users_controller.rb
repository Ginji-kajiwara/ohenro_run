# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'ユーザー登録が完了しました'
      redirect_to current_location_show_path
      Rails.logger.info("User saved successfully: #{user.inspect}")
    else
      render :new
      Rails.logger.error("User save failed: #{user.errors.full_messages.join(", ")}")
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :provider, :uid)
  end
end
