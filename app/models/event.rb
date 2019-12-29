class Event < ApplicationRecord
  belongs_to :artist
  has_one :style
end
