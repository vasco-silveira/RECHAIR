class Course < ApplicationRecord
  belongs_to :institution
  has_many :bookings

  validates :title, presence: true
  validates :professor, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  # validates :subject, inclusion: { in: %w(Art and Design Business & Economics Computer Science Education Engineering Geography History Languages Law Medicine Philosophy Politics and International Relations Sciences Sport Studies), message: "Please choose a subject"}
  validates :price, presence: true, numericality: { only_integer: true }
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
      against: %i[title description ],
      associated_against: {
      institution: [ :name ]
    },
      using: {
        tsearch: {
          prefix: true
        }
      }
  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
