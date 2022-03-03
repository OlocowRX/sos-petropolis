class Campaign < ApplicationRecord
  has_many :donations
  belongs_to :user
  has_one_attached :image

  validates :name, :info, presence: true
  validates :info, length: { minimum: 20 }
end
