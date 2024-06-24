# frozen_string_literal: true

class PagesController < ApplicationController
  skip_before_action :require_login
  def top; end

  def policy; end

  def terms; end
end
