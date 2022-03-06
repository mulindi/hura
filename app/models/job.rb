class Job < ApplicationRecord
  belongs_to :user

  JOB_TYPES = %w[
    Full-time
    Part-time
    Contract
    Internship
    Freelance
    Volunteer
    Temporary
    Other
  ].freeze

  validates :title, presence: true
end
