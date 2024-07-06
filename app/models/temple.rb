# frozen_string_literal: true

class Temple < ApplicationRecord
  enum prefectures: { "徳島県": 1, "高知県": 2, "愛媛県": 3, "香川県": 4 }
  attr_accessor :photos
end
