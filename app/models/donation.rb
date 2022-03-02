class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :campaign

  validates :type, :observation, presence: true
  validates :type, inclusion: { in: %w[cash food clothes] }
  validates :observation, length: { minimum: 10 }
end
