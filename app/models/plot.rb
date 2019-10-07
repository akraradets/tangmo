class Plot < ApplicationRecord
  belongs_to :farmer
  belongs_to :certificate
  has_one_attached :picture
end
