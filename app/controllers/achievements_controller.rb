class AchievementsController < ApplicationController
  def index
    @tokushima_temples = Temple.where(prefectures: '徳島県').where('distance_from_start <= ?', user_total_distance)
    @kochi_temples = Temple.where(prefectures: '高知県').where('distance_from_start <= ?', user_total_distance)
    @ehime_temples = Temple.where(prefectures: '愛媛県').where('distance_from_start <= ?', user_total_distance)
    @kagawa_temples = Temple.where(prefectures: '香川県').where('distance_from_start <= ?', user_total_distance)
  end

  def show; end
end
