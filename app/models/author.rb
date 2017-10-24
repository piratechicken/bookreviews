class Author < ApplicationRecord
  has_many :authorings
  has_many :books, through: :authorings
end
