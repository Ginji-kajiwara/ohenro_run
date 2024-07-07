# frozen_string_literal: true

class AchievementsController < ApplicationController
  include HTTParty

  def index
    @tokushima_temples = fetch_temple_photos(Temple.where(prefectures: '徳島県').where('distance_from_start <= ?',
                                                                                       user_total_distance))
    @kochi_temples = fetch_temple_photos(Temple.where(prefectures: '高知県').where('distance_from_start <= ?',
                                                                                   user_total_distance))
    @ehime_temples = fetch_temple_photos(Temple.where(prefectures: '愛媛県').where('distance_from_start <= ?',
                                                                                   user_total_distance))
    @kagawa_temples = fetch_temple_photos(Temple.where(prefectures: '香川県').where('distance_from_start <= ?',
                                                                                    user_total_distance))
  end

  def show
    @temple = Temple.find(params[:id])
  end

  private

  def fetch_temple_photos(temples)
    temples.each do |temple|
      place_id = fetch_place_id(temple.name)
      temple.photos = place_id ? fetch_photos(place_id) : []
    end
    temples
  end

  def fetch_place_id(name)
    url = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json'
    response = HTTParty.get(url,
                            query: { input: name, inputtype: 'textquery', fields: 'place_id',
                                     key: ENV['MAPS_API_KEY'] })
    return unless response.success?

    data = JSON.parse(response.body)
    data.dig('candidates', 0, 'place_id')
  end

  def fetch_photos(place_id)
    url = 'https://maps.googleapis.com/maps/api/place/details/json'
    response = HTTParty.get(url, query: { place_id: place_id, fields: 'photos', key: ENV['MAPS_API_KEY'] })
    if response.success?
      data = JSON.parse(response.body)
      photos = data.dig('result', 'photos')
      photos ? photos.map { |photo| generate_photo_url(photo['photo_reference'], ENV['MAPS_API_KEY']) } : []
    else
      []
    end
  end

  def generate_photo_url(photo_reference, api_key)
    "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{photo_reference}&key=#{api_key}"
  end
end
