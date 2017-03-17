class Book < ApplicationRecord
  has_many :comments
  has_many :quotations

  validates :title, presence: true
  validates :price, presence: true
  validates :rate, presence: true
end