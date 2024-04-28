class PagesController < ApplicationController
  skip_before_action :require_login, only: %i[top policy]
  def top; end

  def policy; end

  def terms; end
end
