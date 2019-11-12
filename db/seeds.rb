# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'admin@tangmo.com', username: 'admin', password: '123456', password_confirmation: '123456')
puts "User - username='admin' password='123456'"

orgnames = ["ไม่มี","ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค","เกษตรแปลงใหญ่","เกษตรอินทรีย์","โครงการแปลงต้นแบบ"]
for orgname in orgnames do
    org = Organization.new(name: orgname)
    if org.save 
        puts "Organization - name='#{orgname}'"
    end
end

certnames = ["ไม่มี","มกษ."]
for certname in certnames do
    cert = Certificate.new(name: certname)
    if cert.save
        puts "Certificate - name='#{certname}'"
    end
end

polinames = ["เกษตรอินทรีย์","อินทรีย์และเคมี","ตัดหญ้าดูแลแปลง"]
for poliname in polinames do
    poli = Policy.new(name: poliname)
    if poli.save
        puts "Policy - name='#{poliname}'"
    end
end

waternames = ["มีระบบน้ำหยด","ไม่มีระบบน้ำ"]
for watername in waternames do
    water = WateringManagement.new(name: watername)
    if water.save
        puts "Water Management - name='#{watername}'"
    end
end

illConnames = ["พบโรคเถาเหี่ยว","พบโรคราน้ำค้าง","พบโรคเหี่ยวเขียว"]
for illConname in illConnames do
    illCon = IllnessControl.new(name: illConname)
    if illCon.save
        puts "Illness Control - name='#{illConname}'"
    end
end

harvProdnames = ["ใช้แรงงานคน","ใช้เครื่องจักร"]
for harvProdname in harvProdnames do
    harvProd = HarvestProcedure.new(name: harvProdname)
    if harvProd.save
        puts "Harvest Procedure - name='#{harvProdname}'"
    end
end

marketnames = ["เกษตรกรจำหน่ายเอง","เกษตรกรตัดพ่อค้าคนกลางมารับ","พ่อค้าคนกลางเหมายกแปลง"]
for marketname in marketnames do
    market = Market.new(name: marketname)
    if market.save
        puts "Market - name='#{marketname}'"
    end
end

logisticnames = ["มีรถมารับซื้อ","รถบรรทุก","รถกระบะ"]
for logisticname in logisticnames do
    logistic = Logistic.new(name: logisticname)
    if logistic.save
        puts "Logistic - name='#{logisticname}'"
    end
end

farmer = Farmer.new(
    title: "นาย",
    firstName: "ณรงค์",
    lastName: "มะขามป้อม",
    dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    organization_id: 1,
    addressNo: "32/9",
    addressMoo: "3",
    addressTambon: "ศรีวิชัย",
    addressAmphoe: "พุนพิน",
    addressProvince: "สุราษฎร์ธานี",
    addressZipcode: "",
    phoneNo: "082-422-4429",
    facebook: "",
    line: "",
    email: ""
)
farmer.save
farmer = Farmer.new(
    title: "นาย",
    firstName: "ณรงค์2",
    lastName: "มะขามป้อม",
    dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    organization_id: 1,
    addressNo: "32/9",
    addressMoo: "3",
    addressTambon: "ศรีวิชัย",
    addressAmphoe: "พุนพิน",
    addressProvince: "สุราษฎร์ธานี",
    addressZipcode: "",
    phoneNo: "082-422-4429",
    facebook: "",
    line: "",
    email: ""
)
farmer.save
farmer = Farmer.new(
    title: "นาย",
    firstName: "ณรงค์3",
    lastName: "มะขามป้อม",
    dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    organization_id: 1,
    addressNo: "32/9",
    addressMoo: "3",
    addressTambon: "ศรีวิชัย",
    addressAmphoe: "พุนพิน",
    addressProvince: "สุราษฎร์ธานี",
    addressZipcode: "",
    phoneNo: "082-422-4429",
    facebook: "",
    line: "",
    email: ""
)
farmer.save
farmer = Farmer.new(
    title: "นาย",
    firstName: "ณรงค์4",
    lastName: "มะขามป้อม",
    dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    organization_id: 1,
    addressNo: "32/9",
    addressMoo: "3",
    addressTambon: "ศรีวิชัย",
    addressAmphoe: "พุนพิน",
    addressProvince: "สุราษฎร์ธานี",
    addressZipcode: "",
    phoneNo: "082-422-4429",
    facebook: "",
    line: "",
    email: ""
)
farmer.save
farmer = Farmer.new(
    title: "นาย",
    firstName: "ณรงค์5",
    lastName: "มะขามป้อม",
    dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    organization_id: 1,
    addressNo: "32/9",
    addressMoo: "3",
    addressTambon: "ศรีวิชัย",
    addressAmphoe: "พุนพิน",
    addressProvince: "สุราษฎร์ธานี",
    addressZipcode: "",
    phoneNo: "082-422-4429",
    facebook: "",
    line: "",
    email: ""
)
farmer.save