# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'admin@tangmo.com', username: 'admin', password: '123456', password_confirmation: '123456')
puts "User - username='admin' password='123456'"

orgnames = ["ไม่มี,ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค","เกษตรแปลงใหญ่","เกษตรอินทรีย์","โครงการแปลงต้นแบบ"]
for orgname in orgnames do
    org = Organization.new(name: orgname)
    if org.save 
        puts "Organization - name='#{orgname}'"
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