class Farmer < ApplicationRecord
  validates :firstName, presence: true, { scope: :lastName }
  validates :lastName, presence: true
  
  belongs_to :organization
end
