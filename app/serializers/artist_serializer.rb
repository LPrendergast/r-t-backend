class ArtistSerializer < ActiveModel::Serializer
  attributes :artist_name,:portfolio,:image_url,:description,:password_digest, :id
  has_many :events
end
