class Job < ApplicationRecord
  belongs_to :user

  JOB_TYPES = [
    'Full-time',
    'Part-time',
    'Contract',
    'Internship',
    'Freelance',
    'Volunteer',
    'Temporary',
    'Other'
  ]

  validates :title, presence: true
end
