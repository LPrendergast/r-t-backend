class EventSerializer < ActiveModel::Serializer
  attributes :title, :description,:image_url,:location,:date, :id
  belongs_to :artist
end
