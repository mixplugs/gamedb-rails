class Item < ApplicationRecord
  has_many :holds
  has_many :players through: :holds
end
