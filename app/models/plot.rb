class Plot < ApplicationRecord
  # validates :lat, presence: true, uniqueness: {scope: :long}
  # validates :long, presence: true

  belongs_to :farmer
  has_many_attached :pictures

  after_initialize do
    if self.new_record?
      # values will be available for new record forms.
      if self.plotManagement.nil?
        self.plotManagement = {}.to_json
      end


      if self.fertilizeManagement.nil?
        fertilizeObj = {"0" => {"สูตรปุ๋ย" => "", "อัตรา" => ""},
                        "1" => {"สูตรปุ๋ย" => "", "อัตรา" => ""},
                        "2" => {"สูตรปุ๋ย" => "", "อัตรา" => ""},
                        "3" => {"สูตรปุ๋ย" => "", "อัตรา" => ""}
                    }
        self.fertilizeManagement = fertilizeObj.to_json
      end

      if self.waterManagement.nil?
        self.waterManagement = {}.to_json
      end

      if self.illnessManagement.nil?
        self.illnessManagement = {}.to_json
      end

      if self.harvestManagement.nil?
        self.harvestManagement = {}.to_json
      end

      if self.sellingChannel.nil?
        self.sellingChannel = {}.to_json
      end

      if self.logistic.nil?
        self.logistic = {}.to_json
      end

      if(self.polygon.nil?)
        self.polygon = [].to_json
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

  def areaSqurekilometre
    # 1 rai = 0.0016 kilometre
    areaSqurekilometre = areaRai * 0.0016
    return  areaSqurekilometre
  end
end
