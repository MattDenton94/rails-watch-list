class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :overview, presence: true
  validates :title, presence: true
  has_one_attached :poster
end
