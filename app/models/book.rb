class Book < ApplicationRecord
  has_many :reviews
  has_many :authorings
  has_many :authors, through: :authorings

  include ImageUploader[:image]
end
