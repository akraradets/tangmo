import pandas
import datetime
import glob
import math
import re
from pathlib import Path

def tryint(s):
    try:
        return int(s)
    except ValueError:
        return s

def alphanum_key(s):
    return [tryint(c) for c in re.split('([0-9]+)', s)]

def attachPicture(objName, attachName='picture'):
    # create folder
    Path(f"../seedPicture/{objName}").mkdir(parents=True, exist_ok=True)
    template = f"""Dir[Rails.root + "seedPicture/{objName}/*"].each do |pic|
    {objName}.{attachName}.attach(io: File.open(pic), filename: pic.split('/').last)
end"""
    return template

def getCol(record, col):
    try:
        return record[col]
    except:
        return ""

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
    addressNo = ""
    addressMoo = ""
    addressTambon = ""
    addressAmphoe = ""
    addressProvince = ""
    addressZipcode = ""

    isAddressNo = True
    nextIsMoo = False
    mightBeZipcode = False
    for data in addresses:
        if(nextIsMoo):
            nextIsMoo = False
            addressMoo = data
        elif(data.find('.') == -1):
            if(data == "หมู่"):
                nextIsMoo = True
            elif(mightBeZipcode):
                addressZipcode = data
            elif(isAddressNo):
                addressNo = data
        else:
            if(data.split('.')[0] == "ต"):
                addressTambon = data.split('.')[1]
            if(data.split('.')[0] == "อ"):
                addressAmphoe = data.split('.')[1]
            if(data.split('.')[0] == "จ"):
                addressProvince = data.split('.')[1]
        mightBeZipcode = True
        isAddressNo = False
    # 6	จำนวนแปลง
    # 7	ขนาดพื้นที่รวมทุกแปลง (ไร่)
    # 8	เป็นสมาชิกกลุ่ม
    # group: "ชมรมแตงโมปลอดสารพิษผู้ผลิตปลอดโรค",
    group = records[8][3].strip() if type(records[8][3]) == type("") else "-" 
    # 9	ประสบการณ์การปลูกแตงโม (ปี)
    # 10	เบอร์โทรศัพท์
    phone = records[10][3].strip() if type(records[10][3]) == type("") else "-" 
    # 11	อีเมล
    email = records[11][3].strip() if type(records[11][3]) == type("") else "-" 
    # 12	ช่องทางการขายและติดต่อ
    facebook = records[12][6].strip() if type(records[12][6]) == type("") else "-" 
    line = getCol(records[12],8).strip() if type(getCol(records[12],8)) == type("") else "-" 
    # 13	พันธุ์ของแตงโม
    # 14	รูปถ่ายเกษตรกร ครึ่งตัว ใบหน้ายิ้มแย้มถ่ายคู่กับผลผลิต

    farmer = f"""Farmer.new( 
    title: '{title:}',
    firstName: '{firstName:}',
    lastName: '{lastName:}',
    dateOfBirth: Date.strptime('{dateOfBirth}', '%d-%m-%Y'),
    group: '{group:}',
    addressNo: '{addressNo}',
    addressMoo: '{addressMoo}',
    addressTambon: '{addressTambon}',
    addressAmphoe: '{addressAmphoe}',
    addressProvince: '{addressProvince}',
    addressZipcode: '{addressZipcode}',
    phone: '{phone}',
    facebook: '{facebook}',
    line: '{line}',
    email: '{email}'
    )"""

    return farmer

def createPlot(records, farmer_id):
    # 1	รหัสแปลง
    # 2	รหัสเกษตรกร
    # 3	ชื่อเกษตรกรเจ้าของแปลง
    # 4	ขนาดพื้นที่ (ไร่)
    areaRai = records[3][3]
    # 5	จำนวนต้น (ต้น)
    treeCount = records[4][3]
    # 6	พันธุ์ที่ปลูก
    breed = records[5][3].strip() if type(records[5][3]) == type("") else "-"
    # 7	ปลูกรอบที่
    # 8	ตำแหน่งที่ตั้ง (ที่อยู่แปลง)
    addresses = records[7][3].strip().split(' ')
    # ['32/9', 'หมู่', '3', 'ต.ศรีวิชัย', 'อ.พุนพิน', 'จ.สุราษฎร์ธานี']
    # addressNo: "32/9",
    # addressMoo: "3",
    # addressTambon: "ศรีวิชัย",
    # addressAmphoe: "พุนพิน",
    # addressProvince: "สุราษฎร์ธานี",
    # addressZipcode: "",
    addressNo = ""
    addressMoo = ""
    addressTambon = ""
    addressAmphoe = ""
    addressProvince = ""
    addressZipcode = ""

    isAddressNo = True
    nextIsMoo = False
    mightBeZipcode = False
    for data in addresses:
        if(nextIsMoo):
            nextIsMoo = False
            addressMoo = data
        elif(data.find('.') == -1):
            if(data == "หมู่"):
                nextIsMoo = True
            elif(mightBeZipcode):
                addressZipcode = data
            elif(isAddressNo):
                addressNo = data
        else:
            if(data.split('.')[0] == "ต"):
                addressTambon = data.split('.')[1]
            if(data.split('.')[0] == "อ"):
                addressAmphoe = data.split('.')[1]
            if(data.split('.')[0] == "จ"):
                addressProvince = data.split('.')[1]
        mightBeZipcode = True
        isAddressNo = False

    # 9	โครงการที่เข้าร่วม
    project = records[8][3].strip() if type(records[8][3]) == type("") else "-"
    # 10	ใบรับรองที่ได้ และวันที่ได้ใบรับรอง
    certificate = ''
    certificateDate = records[9][3].strip() if type(records[9][3]) == type("") else "-"
    # 11	ช่วงการเก็บเกี่ยวผลผลิต (วัน)
    harvestPeriod = records[10][3].strftime('%B %Y') if type(records[9][3]) == type(datetime.datetime.now()) else records[10][3]
    # 12	ปริมาณผลผลิตทั้งหมด (กิโลกรัม)
    harvestQuantity = records[11][3]
    # 13	ราคาผลผลิต (บาท/กิโลกรัม)
    price = records[12][3]
    # 14	การจัดการแปลง
    plotManagement = {}
    if records[13][3].find('√') != -1:
        plotManagement["เกษตรอินทรีย์"] = "true"
    if records[14][3].find('√') != -1:
        plotManagement["อินทรีย์และเคมี"] = "true"
    if records[15][3].find('√') != -1:
        plotManagement["ตัดหญ้าดูแลแปลง"] = "true"
    # 15	วิธีการใส่ปุ๋ย
    count = 0
    fertilizeManagement = {}
    while records[16 + count][2] != "การจัดการน้ำ":
        proc = {}
        proc["สูตรปุ๋ย"] = records[16+count][3].strip().split(' ')[1] if records[16+count][3].strip().find(' ') != -1 else "-"
        proc["อัตรา"] = records[16+count][4].strip().split(' ')[1] if len(records[16+count][4].strip().split(' ')) == 3 else "-"
        fertilizeManagement[str(count)] = proc
        count = count + 1
    offset = count - 3
    if(offset == 0):
        proc = {}
        proc["สูตรปุ๋ย"] = "-"
        proc["อัตรา"] = "-"
        fertilizeManagement[str(count)] = proc

    # 16	การจัดการน้ำ
    waterManagement = {}
    if records[19+offset][3].find('√') != -1:
        waterManagement["มีระบบน้ำหยด"] = "true"
    if records[20+offset][3].find('√') != -1:
        waterManagement["ไม่มีระบบน้ำ"] = "true"
    # 17	การควบคุมโรค
    illnessManagement = {}
    if records[21+offset][3].find('√') != -1:
        part1 = records[21+offset][4].strip() if type(records[21+offset][4]) == type("") else '-'
        part2 = getCol(records[21+offset],5).strip() if type(getCol(records[21+offset],5)) == type("") else '-'
        illnessManagement["พบโรคเถาเหี่ยว"] = f"{part1} {part2}"
    if records[22+offset][3].find('√') != -1:
        part1 = records[22+offset][4].strip() if type(records[22+offset][4]) == type("") else '-'
        part2 = getCol(records[22+offset],5).strip() if type(getCol(records[22+offset],5)) == type("") else '-'
        illnessManagement["พบโรคราน้ำค้าง"] = f"{part1} {part2}"
    if records[23+offset][3].find('√') != -1:
        part1 = records[23+offset][4].strip() if type(records[23+offset][4]) == type("") else '-'
        part2 = getCol(records[23+offset],5).strip() if type(getCol(records[23+offset],5)) == type("") else '-'
        illnessManagement["พบโรคเหี่ยวเขียว"] = f"{part1} {part2}"
    if records[24+offset][3].find('√') != -1:
        illnessManagement["ไม่พบ"] = "true"
    # 18	วิธีการเก็บเกี่ยวผลผลิต
    harvestManagement = {}
    if records[25+offset][3].find('√') != -1:
        harvestManagement["ใช้แรงงานคน"] = "true"
    if records[26+offset][3].find('√') != -1:
        harvestManagement["ใช้เครื่องจักร"] = "true"
    # 19	แหล่งรับซื้อ
    sellingChannel = {}
    if records[27+offset][3].find('√') != -1:
        sellingChannel["เกษตรกรจำหน่ายเอง"] = "true"
    if records[28+offset][3].find('√') != -1:
        sellingChannel["เกษตรกรตัดพ่อค้าคนกลางมารับ"] = "true"
    if records[29+offset][3].find('√') != -1:
        sellingChannel["พ่อค้าคนกลางเหมายกแปลง"] = "true"
    # 20	วิธีการขนส่งผลผลิต
    logistic = {}
    if records[30+offset][3].find('√') != -1:
        logistic["มีรถมารับซื้อ"] = "true"
    if records[31+offset][3].find('√') != -1:
        logistic["รถบรรทุก"] = "true"
    if records[32+offset][3].find('√') != -1:
        logistic["รถกระบะ"] = "true"
    # 21	ข้อมูลพิกัดตำแหน่งกลางแปลง (UTM)
    lat = records[33+offset][3].strip().split(' ')[1] if records[33+offset][3].strip().find(' ') != -1 else 0
    Long = records[33+offset][4].strip().split(' ')[1] if records[33+offset][4].strip().find(' ') != -1 else 0
    # 22	ขอบเขตแปลง (รูปร่างของแปลงเกษตรกร)
    # 23	รูปถ่ายบริเวณแปลง รูปผลผลิต

    plot = f"""Plot.new(
    farmer_id: {farmer_id},
    areaRai: {areaRai},
    treeCount: {treeCount},
    breed: '{breed}',
    project: '{project}',
    certificate: '{certificate}',
    certificateDate: '{certificateDate}',
    harvestPeriod: '{harvestPeriod}',
    harvestQuantity: '{harvestQuantity}',
    price: '{price}',
    plotManagement: '{str(plotManagement).replace("'",'"')}',
    fertilizeManagement: '{str(fertilizeManagement).replace("'",'"')}',
    waterManagement: '{str(waterManagement).replace("'",'"')}',
    illnessManagement: '{str(illnessManagement).replace("'",'"')}',
    harvestManagement: '{str(harvestManagement).replace("'",'"')}',
    sellingChannel: '{str(sellingChannel).replace("'",'"')}',
    logistic: '{str(logistic).replace("'",'"')}',
    addressNo: '{addressNo}',
    addressMoo: '{addressMoo}',
    addressTambon: '{addressTambon}',
    addressAmphoe: '{addressAmphoe}',
    addressProvince: '{addressProvince}',
    addressZipcode: '{addressZipcode}',
    lat: '{lat}',
    long: '{Long}'
    )"""
    # logistic: '{'มีรถมารับซื้อ':'true','รถกระบะ':'true'}',
    return plot


seedFile = open('seed_tail.txt','w')
filenames = sorted(glob.glob("./xls/*"), key=alphanum_key)
farmer_id = 1
for filename in filenames:
    print(f"{farmer_id}: read file - {filename}")
    excel = pandas.ExcelFile(filename)
    for i in range(len(excel.sheet_names)):
        # Farmer Records
        if i == 0:
            objName = f"farmer{farmer_id}"
            print(f"{farmer_id}: - {objName}")
            dfs = pandas.read_excel(excel,0)
            seedFile.write( f"{objName} = {createFarmer(dfs.to_records())}\n" )
            seedFile.write( attachPicture(objName,'picture') + "\n" )
            seedFile.write( f"{objName}.save\n")
            print(f"{farmer_id}: - {objName} [DONE]")
        # Plot Records
        elif i < len(excel.sheet_names) - 1:
            objName = f"plot{farmer_id}_{i}"
            print(f"{farmer_id}: - {objName}")
            dfs = pandas.read_excel(excel,i)
            seedFile.write( f"{objName} = {createPlot(dfs.to_records(), farmer_id)}\n" )
            seedFile.write( attachPicture(objName, 'pictures') + "\n" )
            seedFile.write( f"{objName}.save\n")
            print(f"{farmer_id}: - {objName} [DONE]")
    farmer_id = farmer_id + 1
seedFile.close()