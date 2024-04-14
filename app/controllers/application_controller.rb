class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path, danger: "ログインしてください"
  end

  def user_distance_logs
    current_user.distance_logs
  end

end
