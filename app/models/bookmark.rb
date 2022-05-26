class Bookmark < ApplicationRecord
  # validates :movie, :list, presence: true, uniqueness: true
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'existing in the list' }
end
