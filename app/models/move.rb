class Move < ApplicationRecord
  has_many :spot_moves
  has_many :spots, through: :spot_moves
end
