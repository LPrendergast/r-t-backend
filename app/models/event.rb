class Event < ApplicationRecord
  belongs_to :artist
  has_one :eventStyle
end
