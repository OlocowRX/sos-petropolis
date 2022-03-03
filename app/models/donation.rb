class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :campaign

  validates :donation_type, :observation, presence: true
  validates :donation_type, inclusion: { in: %w[cash food clothes] }
  validates :observation, length: { minimum: 10 }
end
