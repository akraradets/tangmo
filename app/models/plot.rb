class Plot < ApplicationRecord
  validates :lat, presence: true, uniqueness: {scope: :long}
  validates :long, presence: true

  belongs_to :farmer
  has_many_attached :pictures

  after_initialize do
    if self.new_record?
      # values will be available for new record forms.
      if self.plotManagement.nil?
        self.plotManagement = "".to_json
      end

      if self.fertilizeManagement.nil?
        fert = {"0" => {"สูตรปุ๋ย" => "25-7-7", "อัตรา" => "100"}}
        self.fertilizeManagement = fert.to_json
      end
      
      if self.waterManagement.nil?
        self.waterManagement = "".to_json
      end
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
end
