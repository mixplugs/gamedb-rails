class Monster < ApplicationRecord
  has_many :drops
  has_many :items through: :drops
end
