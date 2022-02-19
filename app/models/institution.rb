class Institution < ApplicationRecord
  has_many :courses

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
