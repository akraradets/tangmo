import pandas
import glob

def attachPicture(objName):
    template = f"""Dir[Rails.root + "seedPicture/{objName}*"].each do |pic|
    {objName}.pictures.attach(io: File.open(pic), filename: pic.split('/').last)
end"""
    return template


def createFarmer(records):
    # 0	ข้อมูลเกษตรกรในโครงการวิจัยและพัฒนาการผลิตแตงโมบ้านทุ่งอ่าว	
    # 1	รหัสเกษตรกร
    # 2	ชื่อ-สกุล
    firstName, lastName = records[2][3].strip().split(' ')
    # firstName, lastName = "นางสาวฉัตราภรณ์ สุขทา ".strip().split(' ')
    title = ""
    if(firstName[0:3] == "นาย"):
        title = "นาย"
        firstName = firstName[3:]
    elif(firstName[0:6] == "นางสาว"):
        title = "นางสาว"
        firstName = firstName[6:]
    elif(firstName[0:3] == "นาง"):
        title = "นาง"
        firstName = firstName[3:]
    # 3	วัน/เดือน/ปี เกิด
    # dateOfBirth: Date.strptime('20-05-1965', '%d-%m-%Y'),
    dateOfBirth = records[3][3]
    dateOfBirth = dateOfBirth.replace(year=dateOfBirth.year-543).strftime('%d-%m-%Y')
    # 4	อายุเกษตรกร
    # 5	ที่อยู่อาศัย
    addresses = records[5][3].strip().split(' ')
    # ['32/9', 'หมู่', '3', 'ต.ศรีวิชัย', 'อ.พุนพิน', 'จ.สุราษฎร์ธานี']
    # addressNo: "32/9",
    # addressMoo: "3",
    # addressTambon: "ศรีวิชัย",
    # addressAmphoe: "พุนพิน",
    # addressProvince: "สุราษฎร์ธานี",
    # addressZipcode: "",
    hasMoo = 0 if addresses[1] == 'หมู่' else 2
    addressNo = addresses[0]
    addressMoo = addresses[2] if hasMoo == 0 else ""
    addressTambon = addresses[3-hasMoo].split('.')[1]
    addressAmphoe = addresses[4-hasMoo].split('.')[1]
    addressProvince = addresses[5-hasMoo].split('.')[1]
    addressZipcode = addresses[6-hasMoo].split('.') if 6-hasMoo < len(addresses) else ""
    # 6	จำนวนแปลง
    # 7	ขนาดพื้นที่รวมทุกแปลง (ไร่)
    # 8	เป็นสมาชิกกลุ่ม
    # group: "ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค",
    group = records[8][3]
    # 9	ประสบการณ์การปลูกแตงโม (ปี)
    # 10	เบอร์โทรศัพท์
    phone = records[10][3]
    # 11	อีเมล
    email = records[11][3]
    # 12	ช่องทางการขายและติดต่อ
    facebook = records[12][6]
    line = records[12][8]
    # 13	พันธุ์ของแตงโม
    # 14	รูปถ่ายเกษตรกร ครึ่งตัว ใบหน้ายิ้มแย้มถ่ายคู่กับผลผลิต

    farmer = f"""Farmer.new( 
    title: '{title:}',
    firstName: '{firstName:}',
    lastName: '{lastName:}',
    dateOfBirth: Date.strptime('{dateOfBirth}', '%d-%m-%Y'),
    group: '{group:}',
    addressNo: '{addressNo:}',
    addressMoo: '{addressMoo:}',
    addressTambon: '{addressTambon:}',
    addressAmphoe: '{addressAmphoe:}',
    addressProvince: '{addressProvince:}',
    addressZipcode: '{addressZipcode:}',
    phone: '{phone:}',
    facebook: '{facebook:}',
    line: '{line:}',
    email: '{email:}'
    )"""

    return farmer


seedFile = open('seed.txt','w')
filenames = sorted(glob.glob("./xls/*"))
farmerCount = 1
for filename in filenames:
    print(f"{farmerCount}: read file - {filename}")
    excel = pandas.ExcelFile(filename)
    for i in range(len(excel.sheet_names)):
        # Farmer Records
        if i == 0:
            objName = f"farmer{farmerCount}"
            print(f"{farmerCount}: - {objName}")
            dfs = pandas.read_excel(filename,0)
            seedFile.write( f"{objName} = {createFarmer(dfs.to_records())}\n" )
            seedFile.write( attachPicture(objName) + "\n" )
            seedFile.write( f"{objName}.save\n")
            print(f"{farmerCount}: - {objName} [DONE]")
        # Plot Records
        elif i < len(excel.sheet_names) - 1:
            objName = f"plot{farmerCount}_{i}"
            print(f"{farmerCount}: - {objName}")
            print('a')
            print(f"{farmerCount}: - {objName} [DONE]")
    farmerCount = farmerCount + 1
