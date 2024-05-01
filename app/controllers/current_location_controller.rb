class CurrentLocationController < ApplicationController
  def show
    @total_distance = user_total_distance
    @remaining_distance = user_remaining_distance
    @next_temple_distance = next_temple_distance
    @temple = Temple.where('distance_from_start <= ?', user_total_distance).order(id: :desc).first
    @address = @temple.address
  end

  private

  def user_nearest_temple
    user_total_distance
  end
end
