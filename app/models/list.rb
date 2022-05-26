class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks # passer par bookmarks
  validates :name, presence: true, uniqueness: true
end
