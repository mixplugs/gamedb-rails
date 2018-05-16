class Server < ApplicationRecord
  has_many :players, dependent: :destroy
end
