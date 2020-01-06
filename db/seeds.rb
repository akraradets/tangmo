# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'admin@tangmo.com', username: 'admin', password: '123456', password_confirmation: '123456')
puts "User - username='admin' password='123456'"

fertilizeObj = {"0" => {"สูตรปุ๋ย" => "25-7-7", "อัตรา" => "5"},
                "1" => {"สูตรปุ๋ย" => "15-15-15", "อัตรา" => "10"},
                "2" => {"สูตรปุ๋ย" => "14-14-21", "อัตรา" => "15"},
                "3" => {"สูตรปุ๋ย" => "14-14-21", "อัตรา" => "20"}
            }

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

plot = Plot.new(
    farmer: farmer,
    areaRai: 10,
    treeCount: 7000,
    breed: "คอมมานโด",
    project: "ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562",
    certificate: "",
    certificateDate: "19 มีนาคม 2562 - 18 มีนาคม 2564",
    harvestPeriod: "Apr-62",
    harvestQuantity: "2000",
    price: "18",
    plotManagement: "".to_json,
    fertilizeManagement: fertilizeObj.to_json, 
    waterManagement: "".to_json,
    illnessManagement: "".to_json,
    harvestManagement: "",
    sellingChannel: "",
    logistic: "",
    addressNo: "",
    addressMoo: "",
    addressTambon: "มะลวน",
    addressAmphoe: "",
    addressProvince: "",
    addressZipcode: "",
    lat: 9.190191,
    long: 99.224061
)
plot.pictures.attach(io: File.open(Rails.root + 'seedPicture/plot_1_1.jpg'), filename: 'plot_1_1.jpg')
plot.pictures.attach(io: File.open(Rails.root + 'seedPicture/plot_1_2.jpg'), filename: 'plot_1_2.jpg')
plot.pictures.attach(io: File.open(Rails.root + 'seedPicture/plot_1_3.jpg'), filename: 'plot_1_3.jpg')
plot.save

plot2 = Plot.new(
    farmer: farmer,
    areaRai: 8,
    treeCount: 7000,
    breed: "คอมมานโด",
    project: "ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562",
    certificate: "",
    certificateDate: "19 มีนาคม 2562 - 18 มีนาคม 2564",
    harvestPeriod: "Apr-62",
    harvestQuantity: "2000",
    price: "18",
    plotManagement: "".to_json,
    fertilizeManagement: fertilizeObj.to_json, 
    waterManagement: "".to_json,
    illnessManagement: "".to_json,
    harvestManagement: "",
    sellingChannel: "",
    logistic: "",
    addressNo: "",
    addressMoo: "",
    addressTambon: "มะลวน",
    addressAmphoe: "",
    addressProvince: "",
    addressZipcode: "",
    lat: 9.190194,
    long: 99.224060
)
plot2.save


farmer2 = Farmer.new(
    title: "นาย",
    firstName: "ณรงค์2",
    lastName: "มะขามป้อม2",
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
farmer2.save