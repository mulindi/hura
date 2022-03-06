class Job < ApplicationRecord
  belongs_to :user

  JOB_TYPES = %w[
    full-time
    part-time
    contract
    internship
    freelance
    volunteer
  ].freeze

  validates :title, presence: true
end
