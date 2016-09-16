class Account < ApplicationRecord
  belongs_to :user
  has_many :playlists
  validates_presence_of :name, :username
  validates :username, uniqueness: true
end
