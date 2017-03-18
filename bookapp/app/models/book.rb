class Book < ApplicationRecord
  has_many :comments, dependent: :destroy, inverse_of: :book
  has_many :quotations, dependent: :destroy, inverse_of: :book

  accepts_nested_attributes_for :comments, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :quotations, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validates :price, presence: true
  validates :rate, presence: true
end