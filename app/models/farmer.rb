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

    def display_address
        addrNo = addressNo != "" ? addressNo : "-" 
        addrMoo = addressMoo != "" ? addressMoo : "-" 
        addrTambon = addressTambon != "" ? addressTambon : "-" 
        addrAmphoe = addressAmphoe != "" ? addressAmphoe : "-" 
        addrProvince = addressProvince != "" ? addressProvince : "-" 
        addrZipcode = addressZipcode != "" ? addressZipcode : "-" 
    
        addr = "บ้านเลขที่#{addrNo} หมู่#{addrMoo}  ตำบล#{addrTambon} อำเภอ#{addrAmphoe} จังหวัด#{addrProvince} รหัสไปรษณีย์#{addrZipcode}" 
        return addr
      end

    def age
      now = Time.now.utc.to_date
      age = now.year - dateOfBirth.year - (dateOfBirth.to_date.change(:year => now.year) > now ? 1 : 0)
      return age
    end
end
