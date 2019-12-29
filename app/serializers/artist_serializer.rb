class ArtistSerializer < ActiveModel::Serializer
  attributes  :username,:artist_name,:portfolio,:image_url,:description, :id, :style
  has_many :events
end
