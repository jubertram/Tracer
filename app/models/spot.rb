class Spot < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :spot_moves, dependent: :destroy
  has_many :moves, through: :spot_moves

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # accepts_nested_attributes_for :move

  SPOTLEVEL = ["Facile", "Moyen", "Difficile"]

end
