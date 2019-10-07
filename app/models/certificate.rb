class Certificate < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :plots
end
