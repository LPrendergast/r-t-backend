class EventSerializer < ActiveModel::Serializer
  attributes :title, :description,:image_url,:location,:date, :id, :latitude, :longitude, :eventStyle
  belongs_to :artist
end
