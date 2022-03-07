class Campaign < ApplicationRecord
  has_many :donations, dependent: :destroy
  belongs_to :user
  has_one_attached :image

  validates :name, :info, :phone_number, presence: true
  validates :info, length: { minimum: 20 }
end
