class Plot < ApplicationRecord
  belongs_to :farmer
  belongs_to :certificate
  has_one_attached :picture

  def address
    # @farmer.picture.attached? ? url_for(@farmer.picture) : ""
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
