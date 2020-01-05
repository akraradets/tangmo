# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'admin@tangmo.com', username: 'admin', password: '123456', password_confirmation: '123456')
puts "User - username='admin' password='123456'"

farmer = Farmer.new(
    title: "นาย",
    firstName: "ณรงค์",
    lastName: "มะขามป้อม",
    dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    group: "ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค",
    addressNo: "32/9",
    addressMoo: "3",
    addressTambon: "ศรีวิชัย",
    addressAmphoe: "พุนพิน",
    addressProvince: "สุราษฎร์ธานี",
    addressZipcode: "",
    phone: "082-422-4429",
    facebook: "ณรงค์ มะขามป้อม",
    line: "082-422-4429",
    email: ""
)
farmer.picture.attach(io: File.open(Rails.root + 'seedPicture/farmer_1.jpg'), filename: 'farmer_1.jpg')
farmer.save