# frozen_string_literal: true

class DistanceLog < ApplicationRecord
  belongs_to :user

  validates :start_time, presence: true
  validates :distance, presence: true, numericality: { greater_than: 0.1 }
end
