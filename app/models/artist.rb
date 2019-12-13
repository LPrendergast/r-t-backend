class Artist < ApplicationRecord
  has_secure_password
  has_many :events
end