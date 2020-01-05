class Plot < ApplicationRecord
  validates :lat, presence: true, uniqueness: {scope: :long}
  validates :long, presence: true

  belongs_to :farmer
  has_one_attached :picture

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
end
