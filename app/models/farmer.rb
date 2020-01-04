class Farmer < ApplicationRecord
  validates :firstName, presence: true, uniqueness: {scope: :lastName}
  validates :lastName, presence: true

  belongs_to :address
  has_one_attached :picture

  def age
    now = Time.now.utc.to_date
    age = now.year - dateOfBirth.year - (dateOfBirth.to_date.change(:year => now.year) > now ? 1 : 0)
    return age
  end
end
