class Plot < ApplicationRecord
  belongs_to :farmer
  has_one :address, class_name: :PlotAddress
  has_many_attached :photos
end
