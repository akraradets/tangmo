class Farmer < ApplicationRecord
    validates :firstName, presence: true, uniqueness: {scope: :lastName}
    validates :lastName, presence: true
  
    has_one_attached :picture
    has_many :plots
  
    def display_dateOfBirth
        if dateOfBirth.nil?
            return ""
        else
            return "#{dateOfBirth.day}/#{dateOfBirth.month}/#{dateOfBirth.year}"
        end
    end

    def age
      now = Time.now.utc.to_date
      age = now.year - dateOfBirth.year - (dateOfBirth.to_date.change(:year => now.year) > now ? 1 : 0)
      return age
    end
end
