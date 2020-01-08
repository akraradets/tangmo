User.create(email: 'admin@tangmo.com', username: 'admin', password: '123456', password_confirmation: '123456')
puts "User - username='admin' password='123456'"
farmer1 = Farmer.new( 
    title: 'นาย',
    firstName: 'ณรงค์',
    lastName: 'มะขามป้อม',
    dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '32/9',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '082-422-4429',
    facebook: 'ณรงค์ มะขามป้อม',
    line: '082-422-4429',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer1/*"].each do |pic|
    farmer1.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer1.save
plot1_1 = Plot.new(
    farmer_id: 1,
    areaRai: 10,
    treeCount: 7000,
    breed: 'คอมมานโด',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '19 มีนาคม 2562 - 18 มีนาคม 2564',
    harvestPeriod: '2562-04-01 00:00:00',
    harvestQuantity: '2000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true", "ตัดหญ้าดูแลแปลง": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "5"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "10"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "15"}, "3": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "20"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี - อัตรา -", "พบโรคราน้ำค้าง": "ใช้สารเคมี - อัตรา -"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.190191',
    long: '99.224061'
    )
Dir[Rails.root + "seedPicture/plot1_1/*"].each do |pic|
    plot1_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot1_1.save
farmer2 = Farmer.new( 
    title: 'นาย',
    firstName: 'สุริยงค์',
    lastName: 'โมอ่อน',
    dateOfBirth: Date.strptime('02-08-1982', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '12',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '087-563-7573',
    facebook: 'Jatinjegter',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer2/*"].each do |pic|
    farmer2.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer2.save
plot2_1 = Plot.new(
    farmer_id: 2,
    areaRai: 5,
    treeCount: 5000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '-',
    harvestPeriod: 'nan',
    harvestQuantity: '0',
    price: '16',
    plotManagement: '{}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "-", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "-", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{}',
    illnessManagement: '{}',
    harvestManagement: '{}',
    sellingChannel: '{}',
    logistic: '{}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.159496',
    long: '99.187747'
    )
Dir[Rails.root + "seedPicture/plot2_1/*"].each do |pic|
    plot2_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot2_1.save
plot2_2 = Plot.new(
    farmer_id: 2,
    areaRai: 10,
    treeCount: 5000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: '2562-04-01 00:00:00',
    harvestQuantity: '10000',
    price: '16',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี ไซโปรโคนาโซล อัตรา 10 มิลลิลิตรต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.188585',
    long: '99.208613'
    )
Dir[Rails.root + "seedPicture/plot2_2/*"].each do |pic|
    plot2_2.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot2_2.save
farmer3 = Farmer.new( 
    title: 'นางสาว',
    firstName: 'ปริศนา',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('29-07-1990', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '18/9',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '095-080-4731',
    facebook: 'ปริศนา แย้มยินดี',
    line: '095-080-4731',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer3/*"].each do |pic|
    farmer3.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer3.save
plot3_1 = Plot.new(
    farmer_id: 3,
    areaRai: 6,
    treeCount: 6000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: '2562-03-01 00:00:00',
    harvestQuantity: '11000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "150"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ไม่ใช้สารเคมี อัตรา", "พบโรคราน้ำค้าง": "ใช้สารเคมี เมทาแล็กซิล อัตรา 10 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.178000',
    long: '99.207334'
    )
Dir[Rails.root + "seedPicture/plot3_1/*"].each do |pic|
    plot3_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot3_1.save
farmer4 = Farmer.new( 
    title: 'นาย',
    firstName: 'สมพร',
    lastName: 'พัดไสว',
    dateOfBirth: Date.strptime('28-02-1973', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '4/4',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '084-689-9266',
    facebook: 'สมพร พัดไสว',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer4/*"].each do |pic|
    farmer4.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer4.save
plot4_1 = Plot.new(
    farmer_id: 4,
    areaRai: 10,
    treeCount: 4500,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '19 มีนาคม 2562 18 มีนาคม 2564',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '13000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "500"}, "1": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "100"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.178085',
    long: '99.191600'
    )
Dir[Rails.root + "seedPicture/plot4_1/*"].each do |pic|
    plot4_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot4_1.save
plot4_2 = Plot.new(
    farmer_id: 4,
    areaRai: 10,
    treeCount: 5500,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '-',
    harvestPeriod: ' มีนาคม ',
    harvestQuantity: '12500',
    price: '20',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "100"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.167978',
    long: '99.177210'
    )
Dir[Rails.root + "seedPicture/plot4_2/*"].each do |pic|
    plot4_2.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot4_2.save
farmer5 = Farmer.new( 
    title: 'นาย',
    firstName: 'สวงศ์',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('10-09-1961', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '18/7',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '088-8234020',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer5/*"].each do |pic|
    farmer5.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer5.save
plot5_1 = Plot.new(
    farmer_id: 5,
    areaRai: 12,
    treeCount: 8500,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '7500',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "300"}, "3": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ไม่ใช้สารเคมี อัตรา", "พบโรคราน้ำค้าง": "ไม่ใช้สารเคมี อัตรา", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.168915',
    long: '99.177800'
    )
Dir[Rails.root + "seedPicture/plot5_1/*"].each do |pic|
    plot5_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot5_1.save
farmer6 = Farmer.new( 
    title: 'นาย',
    firstName: 'สิทธิชัย',
    lastName: 'อินทชิต',
    dateOfBirth: Date.strptime('18-02-1993', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '18/18',
    addressMoo: '1',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '082-417-4927',
    facebook: '-',
    line: '082-417-4927',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer6/*"].each do |pic|
    farmer6.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer6.save
plot6_1 = Plot.new(
    farmer_id: 6,
    areaRai: 10,
    treeCount: 8500,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'เมษายน',
    harvestQuantity: '11000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "1,300"}, "1": {"สูตรปุ๋ย": "16-16-16", "อัตรา": "200"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "200"}, "3": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "200"}, "4": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "200"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '1',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.166891',
    long: '99.218409'
    )
Dir[Rails.root + "seedPicture/plot6_1/*"].each do |pic|
    plot6_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot6_1.save
farmer7 = Farmer.new( 
    title: 'นางสาว',
    firstName: 'ฉัตราภรณ์',
    lastName: 'สุขทา',
    dateOfBirth: Date.strptime('06-07-1982', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '58/4',
    addressMoo: '1',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '082-720-2256',
    facebook: 'ฉัตราภรณ์ สุขทา',
    line: 'kayza8266',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer7/*"].each do |pic|
    farmer7.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer7.save
plot7_1 = Plot.new(
    farmer_id: 7,
    areaRai: 10,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ต้นเดือนมีนาคม',
    harvestQuantity: '22000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '3',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.177621',
    long: '99.207902'
    )
Dir[Rails.root + "seedPicture/plot7_1/*"].each do |pic|
    plot7_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot7_1.save
farmer8 = Farmer.new( 
    title: 'นาย',
    firstName: 'สำรอง',
    lastName: 'ปานสมุทร',
    dateOfBirth: Date.strptime('21-10-1952', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '32/4',
    addressMoo: '4',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: 'สุราษฎร์ธานี',
    addressZipcode: '',
    phone: '095-068-2729',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer8/*"].each do |pic|
    farmer8.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer8.save
plot8_1 = Plot.new(
    farmer_id: 8,
    areaRai: 5,
    treeCount: 0,
    breed: '-',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '-',
    harvestPeriod: 'nan',
    harvestQuantity: 'nan',
    price: 'nan',
    plotManagement: '{}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "-", "อัตรา": ""}, "1": {"สูตรปุ๋ย": "-", "อัตรา": ""}, "2": {"สูตรปุ๋ย": "-", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": ""}}',
    waterManagement: '{}',
    illnessManagement: '{}',
    harvestManagement: '{}',
    sellingChannel: '{}',
    logistic: '{}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.187563',
    long: '99.252273'
    )
Dir[Rails.root + "seedPicture/plot8_1/*"].each do |pic|
    plot8_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot8_1.save
farmer9 = Farmer.new( 
    title: 'นาย',
    firstName: 'จำรูญ',
    lastName: 'พุ่มมาลา',
    dateOfBirth: Date.strptime('08-10-1967', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '30/4',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '082-280-4551',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer9/*"].each do |pic|
    farmer9.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer9.save
plot9_1 = Plot.new(
    farmer_id: 9,
    areaRai: 20,
    treeCount: 7000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'เมษายน',
    harvestQuantity: '3500',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "400"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'คลองไทร',
    lat: '9.191507',
    long: '99.191873'
    )
Dir[Rails.root + "seedPicture/plot9_1/*"].each do |pic|
    plot9_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot9_1.save
farmer10 = Farmer.new( 
    title: 'นาง',
    firstName: 'ปราณี',
    lastName: 'โมอ่อน',
    dateOfBirth: Date.strptime('24-01-1964', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '48/2',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '089-909-5851',
    facebook: 'ปราณี โมอ่อน',
    line: '062-214-5851',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer10/*"].each do |pic|
    farmer10.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer10.save
plot10_1 = Plot.new(
    farmer_id: 10,
    areaRai: 20,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '29 มกราคม 2562 - 28 มกราคม 2564',
    harvestPeriod: '2004-01-14 00:00:00',
    harvestQuantity: '18',
    price: 'nan',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.173561',
    long: '99.193547'
    )
Dir[Rails.root + "seedPicture/plot10_1/*"].each do |pic|
    plot10_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot10_1.save
farmer11 = Farmer.new( 
    title: 'นาง',
    firstName: 'ละออง',
    lastName: 'สระทองแย',
    dateOfBirth: Date.strptime('18-01-1954', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '49/2',
    addressMoo: '7',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '093-640-6791',
    facebook: 'ญาธิณี สระทองแย',
    line: '093-640-6791',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer11/*"].each do |pic|
    farmer11.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer11.save
plot11_1 = Plot.new(
    farmer_id: 11,
    areaRai: 10,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '10000',
    price: '15',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "150"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี ไซโปรโคนาโซล อัตรา 10 มิลลิลิตรต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี เมทาแล็กซิล อัตรา 10 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ถอนต้นที่เกิดโรคและเผาทำลาย -"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.161478',
    long: '99.188470'
    )
Dir[Rails.root + "seedPicture/plot11_1/*"].each do |pic|
    plot11_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot11_1.save
farmer12 = Farmer.new( 
    title: 'นาย',
    firstName: 'อรรถกร',
    lastName: 'วันเลิศ',
    dateOfBirth: Date.strptime('18-11-1988', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '27/3',
    addressMoo: '7',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '065-390-4880',
    facebook: 'อรรถกร วันเลิศ',
    line: '065-390-4880',
    email: 'modified990@gmail.com'
    )
Dir[Rails.root + "seedPicture/farmer12/*"].each do |pic|
    farmer12.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer12.save
plot12_1 = Plot.new(
    farmer_id: 12,
    areaRai: 10,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '20000',
    price: '15',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "150"}, "1": {"สูตรปุ๋ย": "16-16-16", "อัตรา": "250"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "250"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี ไซโปรโคนาโซล อัตรา 10 มิลลิลิตรต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.176586',
    long: '99.196201'
    )
Dir[Rails.root + "seedPicture/plot12_1/*"].each do |pic|
    plot12_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot12_1.save
farmer13 = Farmer.new( 
    title: 'นาง',
    firstName: 'คำภี',
    lastName: 'วันเลิศ',
    dateOfBirth: Date.strptime('06-01-1961', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '25',
    addressMoo: '7',
    addressTambon: 'มะลวน',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '087-275-2201',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer13/*"].each do |pic|
    farmer13.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer13.save
plot13_1 = Plot.new(
    farmer_id: 13,
    areaRai: 10,
    treeCount: 9000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '20000',
    price: '15',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "150"}, "1": {"สูตรปุ๋ย": "16-16-16", "อัตรา": "250"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "250"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี ไซโปรโคนาโซล อัตรา 10 มิลลิลิตรต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.175570',
    long: '99.195408'
    )
Dir[Rails.root + "seedPicture/plot13_1/*"].each do |pic|
    plot13_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot13_1.save
farmer14 = Farmer.new( 
    title: 'นาง',
    firstName: 'บุญชู',
    lastName: 'พรมสงเคราะ',
    dateOfBirth: Date.strptime('13-02-1954', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '31',
    addressMoo: '7',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: 'ไม่มี',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer14/*"].each do |pic|
    farmer14.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer14.save
plot14_1 = Plot.new(
    farmer_id: 14,
    areaRai: 10,
    treeCount: 1800,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'เมษายน',
    harvestQuantity: '16500',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "16-16-16", "อัตรา": "100"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "500"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "100"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.174194',
    long: '99.195600'
    )
Dir[Rails.root + "seedPicture/plot14_1/*"].each do |pic|
    plot14_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot14_1.save
farmer15 = Farmer.new( 
    title: 'นาย',
    firstName: 'ประกาศิต',
    lastName: 'ศรียาภัย',
    dateOfBirth: Date.strptime('03-02-1993', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '28',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '080-395-8443',
    facebook: 'ประกาศิต ศรียาภัย',
    line: '080-395-8443',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer15/*"].each do |pic|
    farmer15.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer15.save
plot15_1 = Plot.new(
    farmer_id: 15,
    areaRai: 10,
    treeCount: 8000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '19000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "600"}, "2": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "150"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.166725',
    long: '99.175064'
    )
Dir[Rails.root + "seedPicture/plot15_1/*"].each do |pic|
    plot15_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot15_1.save
plot15_2 = Plot.new(
    farmer_id: 15,
    areaRai: 10,
    treeCount: 0,
    breed: '-',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ไม่มี',
    harvestQuantity: 'ไม่มี',
    price: 'ไม่มี',
    plotManagement: '{}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "-", "อัตรา": ""}, "1": {"สูตรปุ๋ย": "-", "อัตรา": ""}, "2": {"สูตรปุ๋ย": "-", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": ""}}',
    waterManagement: '{}',
    illnessManagement: '{}',
    harvestManagement: '{}',
    sellingChannel: '{}',
    logistic: '{}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.167585',
    long: '0'
    )
Dir[Rails.root + "seedPicture/plot15_2/*"].each do |pic|
    plot15_2.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot15_2.save
farmer16 = Farmer.new( 
    title: 'นาย',
    firstName: 'สมาน',
    lastName: 'บ้านเกาะใต้',
    dateOfBirth: Date.strptime('04-05-1969', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '17',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '085-629-4336',
    facebook: 'ไม่มี',
    line: '085-629-4336',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer16/*"].each do |pic|
    farmer16.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer16.save
plot16_1 = Plot.new(
    farmer_id: 16,
    areaRai: 5,
    treeCount: 4080,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'กลางเดือนเมษายน',
    harvestQuantity: '4000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "15-7-35", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ใช้สารเคมี อิมิดาคลอพริด 70% WG อัตรา 10 กรัม ต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.156125',
    long: '99.204794'
    )
Dir[Rails.root + "seedPicture/plot16_1/*"].each do |pic|
    plot16_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot16_1.save
plot16_2 = Plot.new(
    farmer_id: 16,
    areaRai: 10,
    treeCount: 9400,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '29 มกราคม 2562 - 28 มกราคม 2564',
    harvestPeriod: 'ต้นเดือนกุมภาพันธ์',
    harvestQuantity: '14000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "15-7-35", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ใช้สารเคมี อิมิดาคลอพริด 70% WG อัตรา 10 กรัม ต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'ลีเล็ด',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.189483',
    long: '99.231717'
    )
Dir[Rails.root + "seedPicture/plot16_2/*"].each do |pic|
    plot16_2.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot16_2.save
farmer17 = Farmer.new( 
    title: 'นาง',
    firstName: 'สมจิตร',
    lastName: 'โมอ่อน',
    dateOfBirth: Date.strptime('29-01-1962', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '12',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '080-527-2152',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer17/*"].each do |pic|
    farmer17.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer17.save
plot17_1 = Plot.new(
    farmer_id: 17,
    areaRai: 10,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '-',
    harvestPeriod: 'nan',
    harvestQuantity: '0',
    price: '0',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "-", "อัตรา": ""}, "1": {"สูตรปุ๋ย": "-", "อัตรา": ""}, "2": {"สูตรปุ๋ย": "-", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": ""}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเหี่ยวเขียว": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.159628',
    long: '99.189036'
    )
Dir[Rails.root + "seedPicture/plot17_1/*"].each do |pic|
    plot17_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot17_1.save
farmer18 = Farmer.new( 
    title: 'นาย',
    firstName: 'ชัย',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('16-05-1967', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '33/1',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '083-394-7464',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer18/*"].each do |pic|
    farmer18.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer18.save
plot18_1 = Plot.new(
    farmer_id: 18,
    areaRai: 12,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '19 มีนาคม 2562 - 18 มีนาคม 2562',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '8500',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "21-0-0", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "600"}, "3": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "300"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.142836',
    long: '99.205917'
    )
Dir[Rails.root + "seedPicture/plot18_1/*"].each do |pic|
    plot18_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot18_1.save
farmer19 = Farmer.new( 
    title: 'นาย',
    firstName: 'กำพล',
    lastName: 'จำนงค์พันธุ์',
    dateOfBirth: Date.strptime('02-08-1966', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '61',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '089-612-3268',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer19/*"].each do |pic|
    farmer19.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer19.save
plot19_1 = Plot.new(
    farmer_id: 19,
    areaRai: 10,
    treeCount: 5500,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '18000',
    price: '16',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "500"}, "3": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ถอนทิ้ง -", "พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.156917',
    long: '99.206998'
    )
Dir[Rails.root + "seedPicture/plot19_1/*"].each do |pic|
    plot19_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot19_1.save
farmer20 = Farmer.new( 
    title: 'นาง',
    firstName: 'น้ำอ้อย',
    lastName: 'จำนงค์พันธุ์',
    dateOfBirth: Date.strptime('02-05-2018', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '25/4',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '087-263-2528',
    facebook: 'น้ำอ้อย จำนงค์พันธุ์',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer20/*"].each do |pic|
    farmer20.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer20.save
plot20_1 = Plot.new(
    farmer_id: 20,
    areaRai: 6,
    treeCount: 4500,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '19-มีนาคม 2562 -18 มีนาคม 2564',
    harvestPeriod: '2564-04-20 00:00:00',
    harvestQuantity: '5500',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "250"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี ไซโปรโคนาโซล อัตรา 10 มิลลิกรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 10 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี -"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: ',มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'พุนพิน',
    lat: '9.182764',
    long: '99.207516'
    )
Dir[Rails.root + "seedPicture/plot20_1/*"].each do |pic|
    plot20_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot20_1.save
farmer21 = Farmer.new( 
    title: 'นาง',
    firstName: 'ทิวา',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('08-02-1966', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '18/9',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '090-069-1567',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer21/*"].each do |pic|
    farmer21.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer21.save
plot21_1 = Plot.new(
    farmer_id: 21,
    areaRai: 20,
    treeCount: 6000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ต้นเดือนมีนาคม',
    harvestQuantity: '16000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ไม่ใช้สารเคมี ", "พบโรคราน้ำค้าง": "ไม่ใช้สารเคมี ", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี "}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '',
    long: '99.18000'
    )
Dir[Rails.root + "seedPicture/plot21_1/*"].each do |pic|
    plot21_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot21_1.save
farmer22 = Farmer.new( 
    title: 'นาย',
    firstName: 'เผชิญ',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('29-06-1967', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '18/10',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '083-596-3952',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer22/*"].each do |pic|
    farmer22.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer22.save
plot22_1 = Plot.new(
    farmer_id: 22,
    areaRai: 8,
    treeCount: 5600,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'มีนาคม',
    harvestQuantity: '60000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "150"}, "1": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "150"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "50"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี ไซโปรโคนาโซล อัตรา 10 มิลลิลิตรต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.171057',
    long: '99.182100'
    )
Dir[Rails.root + "seedPicture/plot22_1/*"].each do |pic|
    plot22_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot22_1.save
farmer23 = Farmer.new( 
    title: 'นาย',
    firstName: 'วิเชียร',
    lastName: 'โพชฌา',
    dateOfBirth: Date.strptime('30-05-1980', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '18/15',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '084-627-1588',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer23/*"].each do |pic|
    farmer23.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer23.save
plot23_1 = Plot.new(
    farmer_id: 23,
    areaRai: 8,
    treeCount: 6200,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายมีนาคม',
    harvestQuantity: '7000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "150"}, "4": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "50"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี ไซโปรโคนาโซล อัตรา 10 มิลลิลิตรต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 10 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.168126',
    long: '99.177473'
    )
Dir[Rails.root + "seedPicture/plot23_1/*"].each do |pic|
    plot23_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot23_1.save
farmer24 = Farmer.new( 
    title: 'นาง',
    firstName: 'อุรา',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('29-11-1970', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '18/5',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '084-306-4377',
    facebook: 'ไม่มี',
    line: '084-306-4377',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer24/*"].each do |pic|
    farmer24.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer24.save
plot24_1 = Plot.new(
    farmer_id: 24,
    areaRai: 15,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'กลางเดือนมีนาคม',
    harvestQuantity: '12500',
    price: '20',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "0-3-0", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี ไซม็อกซานิล+แมนโคแซบ 8% +6% WP อัตรา 20 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.167385',
    long: '99.175370'
    )
Dir[Rails.root + "seedPicture/plot24_1/*"].each do |pic|
    plot24_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot24_1.save
farmer25 = Farmer.new( 
    title: 'นาย',
    firstName: 'เอกชัย',
    lastName: 'วุฒิพิริยะกุล',
    dateOfBirth: Date.strptime('01-02-1980', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '51/4',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '062-093-4086',
    facebook: 'Ekkachai Seewichai',
    line: 'ไม่มี',
    email: 'ekkachai127@gmail.com'
    )
Dir[Rails.root + "seedPicture/farmer25/*"].each do |pic|
    farmer25.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer25.save
plot25_1 = Plot.new(
    farmer_id: 25,
    areaRai: 10,
    treeCount: 7000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'เมษายน',
    harvestQuantity: '4000',
    price: '20',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '2',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.142319',
    long: '99.204967'
    )
Dir[Rails.root + "seedPicture/plot25_1/*"].each do |pic|
    plot25_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot25_1.save
farmer26 = Farmer.new( 
    title: 'นาง',
    firstName: 'พรพิมล',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('08-07-1976', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '56',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '065-405-7226',
    facebook: 'นางพรพิมล แย้มยินดี',
    line: '065-405-7226',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer26/*"].each do |pic|
    farmer26.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer26.save
plot26_1 = Plot.new(
    farmer_id: 26,
    areaRai: 8,
    treeCount: 7200,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'เมษายน',
    harvestQuantity: '1250',
    price: '16',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ใช้สารเคมี อิมิดาคลอพริด 70% WG อัตรา 10 กรัม ต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'หัวเตย',
    lat: '9.154908',
    long: '99.182478'
    )
Dir[Rails.root + "seedPicture/plot26_1/*"].each do |pic|
    plot26_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot26_1.save
farmer27 = Farmer.new( 
    title: 'นาย',
    firstName: 'สายชล',
    lastName: 'แย้มยินดี',
    dateOfBirth: Date.strptime('27-04-1975', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '56/2',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '086-988-8030',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer27/*"].each do |pic|
    farmer27.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer27.save
plot27_1 = Plot.new(
    farmer_id: 27,
    areaRai: 10,
    treeCount: 8000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'เมษายน',
    harvestQuantity: '5000',
    price: '16',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.204335',
    long: '99.211500'
    )
Dir[Rails.root + "seedPicture/plot27_1/*"].each do |pic|
    plot27_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot27_1.save
farmer28 = Farmer.new( 
    title: 'นาย',
    firstName: 'เสถียร',
    lastName: 'เกตุเพชร',
    dateOfBirth: Date.strptime('26-06-1967', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '63',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '088-380-5159',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer28/*"].each do |pic|
    farmer28.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer28.save
plot28_1 = Plot.new(
    farmer_id: 28,
    areaRai: 23,
    treeCount: 15000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'กลางเดือนมีนาคม',
    harvestQuantity: '40000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"ไม่พบ": "true"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.161124',
    long: '99.170297'
    )
Dir[Rails.root + "seedPicture/plot28_1/*"].each do |pic|
    plot28_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot28_1.save
farmer29 = Farmer.new( 
    title: 'นาง',
    firstName: 'อุไร',
    lastName: 'โมอ่อน',
    dateOfBirth: Date.strptime('21-09-1968', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '54/2',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '086-281-8542',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer29/*"].each do |pic|
    farmer29.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer29.save
plot29_1 = Plot.new(
    farmer_id: 29,
    areaRai: 28,
    treeCount: 19000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่ม่',
    harvestPeriod: 'ต้นเดือนเมษายน',
    harvestQuantity: '31000',
    price: '16',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "250"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: 'ท่าฉาง',
    addressProvince: '',
    addressZipcode: 'คลองไทร',
    lat: '9.211051',
    long: '99.177761'
    )
Dir[Rails.root + "seedPicture/plot29_1/*"].each do |pic|
    plot29_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot29_1.save
farmer30 = Farmer.new( 
    title: 'นาย',
    firstName: 'สมบัติ',
    lastName: 'ศรีทอง',
    dateOfBirth: Date.strptime('11-11-1968', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '28/2',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '083-572-2726',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer30/*"].each do |pic|
    farmer30.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer30.save
plot30_1 = Plot.new(
    farmer_id: 30,
    areaRai: 9,
    treeCount: 8000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ปลายเดือนมีนาคม',
    harvestQuantity: '11000',
    price: '16',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '7',
    addressTambon: 'มะลวน',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.171441',
    long: '99.184345'
    )
Dir[Rails.root + "seedPicture/plot30_1/*"].each do |pic|
    plot30_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot30_1.save
farmer31 = Farmer.new( 
    title: 'นางสาว',
    firstName: 'จารุณีย์',
    lastName: 'กลิ่นถือศิล',
    dateOfBirth: Date.strptime('14-12-1981', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '8/1',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '089-975-1581',
    facebook: 'ไม่มี',
    line: '080-527-2152',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer31/*"].each do |pic|
    farmer31.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer31.save
plot31_1 = Plot.new(
    farmer_id: 31,
    areaRai: 17,
    treeCount: 12000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'มีนาคม',
    harvestQuantity: '22000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ไม่ใช้สารเคมี อัตรา", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: 'ท่าฉาง',
    addressProvince: '',
    addressZipcode: 'ท่าเคย',
    lat: '9.212456',
    long: '99.198262'
    )
Dir[Rails.root + "seedPicture/plot31_1/*"].each do |pic|
    plot31_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot31_1.save
farmer32 = Farmer.new( 
    title: 'นางสาว',
    firstName: 'จิรา',
    lastName: 'สระทองแย',
    dateOfBirth: Date.strptime('04-07-1972', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '50',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '086-274-1532',
    facebook: 'จิรา สระทองแย',
    line: '086-274-1532',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer32/*"].each do |pic|
    farmer32.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer32.save
plot32_1 = Plot.new(
    farmer_id: 32,
    areaRai: 10,
    treeCount: 6300,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '19 มีนาคม 2562 - 18 มีนาคม 2564',
    harvestPeriod: 'ปลายเดือนกุมภาพันธ์',
    harvestQuantity: '2000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "-", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี คาร์เบนดาซิม 50% SC อัตรา 10 มิลลิลิตรต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.174509',
    long: '99.194460'
    )
Dir[Rails.root + "seedPicture/plot32_1/*"].each do |pic|
    plot32_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot32_1.save
farmer33 = Farmer.new( 
    title: 'นาย',
    firstName: 'อภิเดช',
    lastName: 'ฉุนเฉียว',
    dateOfBirth: Date.strptime('08-11-1984', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '61',
    addressMoo: '2',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '082-814-2858',
    facebook: 'ไม่มี',
    line: '082-814-2858',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer33/*"].each do |pic|
    farmer33.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer33.save
plot33_1 = Plot.new(
    farmer_id: 33,
    areaRai: 5,
    treeCount: 3600,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'กุมภาพันธ์',
    harvestQuantity: '13000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "650"}, "1": {"สูตรปุ๋ย": "16-16-16", "อัตรา": "100"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "100"}, "3": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "100"}, "4": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "100"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.163692',
    long: '99.216480'
    )
Dir[Rails.root + "seedPicture/plot33_1/*"].each do |pic|
    plot33_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot33_1.save
farmer34 = Farmer.new( 
    title: 'นาย',
    firstName: 'สมเกรียติ',
    lastName: 'พัฒน์ปาน',
    dateOfBirth: Date.strptime('17-01-1952', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '37',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '081-892-9147',
    facebook: 'ไม่มี',
    line: '081-892-9147',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer34/*"].each do |pic|
    farmer34.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer34.save
plot34_1 = Plot.new(
    farmer_id: 34,
    areaRai: 15,
    treeCount: 9000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'เมษายน',
    harvestQuantity: '6000',
    price: '10',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.185877',
    long: '99.188082'
    )
Dir[Rails.root + "seedPicture/plot34_1/*"].each do |pic|
    plot34_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot34_1.save
farmer35 = Farmer.new( 
    title: 'นาง',
    firstName: 'บุปผา',
    lastName: 'พัดไสว',
    dateOfBirth: Date.strptime('04-04-1972', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '27/1',
    addressMoo: '7',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '061-858-5277',
    facebook: 'ไม่มี',
    line: 'ไม่มี',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer35/*"].each do |pic|
    farmer35.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer35.save
plot35_1 = Plot.new(
    farmer_id: 35,
    areaRai: 20,
    treeCount: 8000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '29 มกราคม 2562- 28 มกราคม 2564',
    harvestPeriod: 'ต้นเดือนมีนาคม',
    harvestQuantity: '11000',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "14-7-35", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ไม่ใช้สารเคมี อัตรา", "พบโรคเหี่ยวเขียว": "ไม่ใช้สารเคมี อัตรา"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'มะลวน',
    lat: '9.178132',
    long: '99.192907'
    )
Dir[Rails.root + "seedPicture/plot35_1/*"].each do |pic|
    plot35_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot35_1.save
farmer36 = Farmer.new( 
    title: 'นาง',
    firstName: 'อัมพร',
    lastName: 'พัดไสว',
    dateOfBirth: Date.strptime('22-01-1980', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '',
    addressMoo: '',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '095-668-9303',
    facebook: 'ซันไปร์ท นามเคลือ',
    line: '095-668-9303',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer36/*"].each do |pic|
    farmer36.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer36.save
plot36_1 = Plot.new(
    farmer_id: 36,
    areaRai: 15,
    treeCount: 10000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '29 มกราคม 2562 - 28 มกราคม 2564',
    harvestPeriod: '1956-02-15 00:00:00',
    harvestQuantity: '40000',
    price: '17',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ใช้สารเคมี อิมิดาคลอพริด 70% WG อัตรา 10 กรัม ต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: 'หัวเตย',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: '',
    lat: '9.160933',
    long: '99.184530'
    )
Dir[Rails.root + "seedPicture/plot36_1/*"].each do |pic|
    plot36_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot36_1.save
farmer37 = Farmer.new( 
    title: 'นาย',
    firstName: 'อภินันท์',
    lastName: 'พัดไสว',
    dateOfBirth: Date.strptime('27-07-1977', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '19',
    addressMoo: '7',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '093-576-0639',
    facebook: 'ApinanApinan',
    line: '093-576-0639',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer37/*"].each do |pic|
    farmer37.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer37.save
plot37_1 = Plot.new(
    farmer_id: 37,
    areaRai: 10,
    treeCount: 9000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: '29 มกราคม 2562 - 28 มกราคม 2564',
    harvestPeriod: '1956-02-15 00:00:00',
    harvestQuantity: '20500',
    price: '17',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ใช้สารเคมี อิมิดาคลอพริด 70% WG อัตรา 10 กรัม ต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'หัวเตย',
    lat: '9.161260',
    long: '99.185099'
    )
Dir[Rails.root + "seedPicture/plot37_1/*"].each do |pic|
    plot37_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot37_1.save
plot37_2 = Plot.new(
    farmer_id: 37,
    areaRai: 6,
    treeCount: 5000,
    breed: 'คอมมานโด',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: '2562-03-02 00:00:00',
    harvestQuantity: '16500',
    price: '18',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "13-13-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "-"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคเถาเหี่ยว": "ใช้สารเคมี เมทาแลกซิล อัตรา 12 กรัมต่อน้ำ 20 ลิตร", "พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร", "พบโรคเหี่ยวเขียว": "ใช้สารเคมี อิมิดาคลอพริด 70% WG อัตรา 10 กรัม ต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.156540',
    long: '99.211042'
    )
Dir[Rails.root + "seedPicture/plot37_2/*"].each do |pic|
    plot37_2.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot37_2.save
farmer38 = Farmer.new( 
    title: 'นาย',
    firstName: 'ชัยณรงค์',
    lastName: 'ไชยนาเคน',
    dateOfBirth: Date.strptime('10-08-1965', '%d-%m-%Y'),
    group: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค',
    addressNo: '36/3',
    addressMoo: '3',
    addressTambon: 'ศรีวิชัย',
    addressAmphoe: 'พุนพิน',
    addressProvince: '',
    addressZipcode: 'สุราษฎร์ธานี',
    phone: '082-665-8987',
    facebook: 'ไม่มี',
    line: '',
    email: 'ไม่มี'
    )
Dir[Rails.root + "seedPicture/farmer38/*"].each do |pic|
    farmer38.picture.attach(io: File.open(pic), filename: pic.split('/').last)
end
farmer38.save
plot38_1 = Plot.new(
    farmer_id: 38,
    areaRai: 14,
    treeCount: 12000,
    breed: 'กินรี',
    project: 'ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค ผู้บริโภคปลอดภัย ปี 2562',
    certificate: '',
    certificateDate: 'ไม่มี',
    harvestPeriod: 'ต้นเดือนมีนาคม',
    harvestQuantity: '35000',
    price: '17',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "46-0-0", "อัตรา": "100"}, "1": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "150"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "0-0-60", "อัตรา": "100"}}',
    waterManagement: '{"มีระบบน้ำหยด": "true"}',
    illnessManagement: '{"พบโรคราน้ำค้าง": "ใช้สารเคมี โพรพิเนบ 70% WP อัตรา 30 กรัมต่อน้ำ 20 ลิตร"}',
    harvestManagement: '{"ใช้แรงงานคน": "true"}',
    sellingChannel: '{"เกษตรกรจำหน่ายเอง": "true", "เกษตรกรตัดพ่อค้าคนกลางมารับ": "true"}',
    logistic: '{"มีรถมารับซื้อ": "true", "รถกระบะ": "true"}',
    addressNo: '',
    addressMoo: '',
    addressTambon: '',
    addressAmphoe: '',
    addressProvince: '',
    addressZipcode: 'ศรีวิชัย',
    lat: '9.189827',
    long: '99.193676'
    )
Dir[Rails.root + "seedPicture/plot38_1/*"].each do |pic|
    plot38_1.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot38_1.save
