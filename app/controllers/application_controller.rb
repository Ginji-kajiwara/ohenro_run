class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path, danger: 'ログインしてください'
  end

  def user_distance_logs
    current_user.distance_logs
  end

  def user_total_distance
    user_distance_logs.sum(:distance)
  end

  def user_remaining_distance
    Temple.last.distance_from_start - user_total_distance
  end
end
