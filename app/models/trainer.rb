class Trainer < ApplicationRecord
  has_many :pokeballs, dependent: :destroy

  has_one_attached :photo
end
