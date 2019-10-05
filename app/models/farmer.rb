class Farmer < ApplicationRecord
  validates :firstName, presence: true, uniqueness: {scope: :lastName}
  validates :lastName, presence: true
  belongs_to :organization

  has_one_attached :picture
end
