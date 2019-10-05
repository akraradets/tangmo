class Organization < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :farmers
end
