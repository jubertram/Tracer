class Move < ApplicationRecord
  has_many :spot_moves
  has_many :spots, through: :spot_moves

  MOVENAME = ["Saut de chat", "Double saut de chat", "Saut de bras"]
end
