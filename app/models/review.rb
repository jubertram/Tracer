class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)
  belongs_to :spot
  belongs_to :user
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
end
