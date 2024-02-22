class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list

  # validates :movie_id
  # validates :list_id
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movie, :scope =>[:list]
end

