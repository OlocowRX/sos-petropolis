class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :campaign

  validates :donation_type, :observation, :quantity, presence: true
  validates :donation_type, inclusion: { in: %w[dinheiro comida roupas] }
  validates :observation, length: { minimum: 10 }
end
