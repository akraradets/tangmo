class Farmer < ApplicationRecord
  validates :firstName, presence: true, uniqueness: {scope: :lastName}
  validates :lastName, presence: true
  belongs_to :organization

  has_one_attached :picture
  has_many :plots

  def age
    now = Time.now.utc.to_date
    age = now.year - dateOfBirth.year - (dateOfBirth.to_date.change(:year => now.year) > now ? 1 : 0)
    return age
  end

  def totalPlotArea
    area = 0
    for plot in plots do
      area = area + plot.areaRai
    end
    return area
  end
end
