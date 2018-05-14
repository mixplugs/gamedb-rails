class Player < ApplicationRecord
  belongs_to :server
  has_many :holds
  has_many :items, through: :holds
  has_many :receives
  has_many :quests, through: :receives
end
