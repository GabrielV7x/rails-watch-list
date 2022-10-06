class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: :title
  validates :overview, presence: true
end
