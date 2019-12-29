class EventSerializer < ActiveModel::Serializer
  attributes :title, :description,:image_url,:location,:date, :id, :latitude, :longitude,:style
  belongs_to :artist
end
