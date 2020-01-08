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
Dir[Rails.root + "seedPicture/farmer1*"].each do |pic|
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
    harvestPeriod: 'April 2562',
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
Dir[Rails.root + "seedPicture/plot1_1*"].each do |pic|
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
Dir[Rails.root + "seedPicture/farmer2*"].each do |pic|
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
    certificateDate: '',
    harvestPeriod: '',
    harvestQuantity: '0',
    price: '16',
    plotManagement: '{}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "-", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "-", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "", "อัตรา": ""}}',
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
Dir[Rails.root + "seedPicture/plot2_1*"].each do |pic|
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
    harvestPeriod: 'April 2562',
    harvestQuantity: '10000',
    price: '16',
    plotManagement: '{"อินทรีย์และเคมี": "true"}',
    fertilizeManagement: '{"0": {"สูตรปุ๋ย": "25-7-7", "อัตรา": "-"}, "1": {"สูตรปุ๋ย": "15-15-15", "อัตรา": "-"}, "2": {"สูตรปุ๋ย": "14-14-21", "อัตรา": "-"}, "3": {"สูตรปุ๋ย": "", "อัตรา": ""}}',
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
Dir[Rails.root + "seedPicture/plot2_2*"].each do |pic|
    plot2_2.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end
plot2_2.save
