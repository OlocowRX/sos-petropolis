class Campaign < ApplicationRecord
  has_many :donations
  belongs_to :user

  validates :name, :info, presence: true
  validates :info, length: { minimum: 20 }
end
