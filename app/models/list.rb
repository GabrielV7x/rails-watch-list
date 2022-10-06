class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: :name


  # validates :bookmarks, uniqueness: true
  # validates :list, uniqueness: true
end
