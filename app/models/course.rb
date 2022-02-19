class Course < ApplicationRecord
  belongs_to :institution
  has_many :bookings

  validates :title, presence: true
  validates :professor, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  # validates :subject, inclusion: { in: %w(Art and Design Business & Economics Computer Science Education Engineering Geography History Languages Law Medicine Philosophy Politics and International Relations Sciences Sport Studies), message: "Please choose a subject"}
  validates :price, presence: true, numericality: { only_integer: true }
  validates :start_date, presence: true
  validates :end_date, presence: true, date: { after_or_equal_to: :start_date }
end

# ratings
# reviews
