class Job < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

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
