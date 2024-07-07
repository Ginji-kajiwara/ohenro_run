# frozen_string_literal: true

class CurrentLocationController < ApplicationController
  def show
    @total_distance = user_total_distance
    @remaining_distance = user_remaining_distance
    @next_temple_distance = next_temple_distance
    @temple = Temple.where('distance_from_start <= ?', user_total_distance).order(id: :desc).first
    @address = @temple.address
    @memory = generate_memory(@address)
    Rails.logger.debug("Generated memory: #{@memory}")
  end

  private

  def user_nearest_temple
    user_total_distance
  end

  def generate_memory(location)
    openai_service = OpenaiService.new(ENV['OPENAI_ACCESS_TOKEN'])
    openai_service.generate_memory(location)
  end
end
