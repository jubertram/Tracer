class Spot < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :spot_moves, dependent: :destroy
  has_many :moves, through: :spot_moves

  validates :spot_difficulty, presence: true
  has_one_attached :photo_url

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  SPOTLEVEL = ["Facile", "Moyen", "Difficile"]
end
