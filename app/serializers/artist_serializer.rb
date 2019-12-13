class ArtistSerializer < ActiveModel::Serializer
  attributes  :username,:artist_name,:portfolio,:image_url,:description, :id
  has_many :events
end
