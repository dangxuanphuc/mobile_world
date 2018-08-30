puts "Starting Faker..."

User.create!(name: "Admin",
  username: "admin0",
  address: "Tầng 13 Toà nhà Keangnam, Hà Nội",
  phone_number: "0988888888",
  email: "admin@mobileworld.com",
  password: "admin111",
  password_confirmation: "admin111",
  admin: true,
  created_at: Time.zone.now)

puts "Faker is generating data... Please wait..."

19.times do |n|
  name  = Faker::Name.name
  username = "user0000#{n+1}"
  address = Faker::Address.full_address
  phone_number = "0900000000"
  email = "user-#{n+1}@mobileworld.com"
  password = "user0000"
  User.create!(name: name,
    username: username,
    address: address,
    phone_number: phone_number,
    email: email,
    password: password,
    password_confirmation: password,
    created_at: Time.zone.now)
end

puts "Created #{User.count} users!"

Category.create!(name: "Điện thoại")
Category.create!(name: "Máy tính bảng")
Category.create!(name: "Máy tính xách tay")
Category.create!(name: "Phụ kiện")

Manufacture.create!(name: "Various")
Manufacture.create!(name: "Samsung")
Manufacture.create!(name: "Apple")
Manufacture.create!(name: "Nokia")
Manufacture.create!(name: "LG")
Manufacture.create!(name: "Oppo")
Manufacture.create!(name: "Vivo")
Manufacture.create!(name: "Dell")
Manufacture.create!(name: "HP")
Manufacture.create!(name: "Acer")
Manufacture.create!(name: "Asus")
Manufacture.create!(name: "Huawei")
Manufacture.create!(name: "Sony")
Manufacture.create!(name: "Lenovo")
Manufacture.create!(name: "Mobell")

Product.delete_all

Product.create!(name: "Oppo Find X", category_id: "1", manufacture_id: "6",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430882/phone/oppo-find-x-1.jpg",
  description: "Oppo Find X", price: "20990000", quantity: "100")
Product.create!(name: "Samsung Galaxy A8", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430883/phone/samsung-galaxy-a8-star-black.jpg",
  description: "Samsung Galaxy A8", price: "13990000", quantity: "100")
Product.create!(name: "iPhone 8 Plus 64GB", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431120/products/iphone-8-plus.jpg",
  description: "iPhone 8 Plus 64GB", price: "23990000", quantity: "100")
Product.create!(name: "Samsung Galaxy J7 Pro", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431122/products/samsung-galaxy-j7-pro.jpg",
  description: "Samsung Galaxy J7 Pro", price: "6090000", quantity: "100")
Product.create!(name: "Samsung Galaxy J7 Plus", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533441732/phone/samsung-galaxy-j7-plus.jpg",
  description: "Samsung Galaxy J7 Plus", price: "7290000", quantity: "100")
Product.create!(name: "Oppo A83", category_id: "1", manufacture_id: "6",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431120/products/oppo-a83.jpg",
  description: "Oppo A83", price: "4990000", quantity: "100")
Product.create!(name: "Vivo Y71", category_id: "1", manufacture_id: "7",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431122/products/vivo-y71.jpg",
  description: "Vivo Y71", price: "3990000", quantity: "100")
Product.create!(name: "Samsung Galaxy A6+ (2018)", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431121/products/samsung-galaxy-a6-plus-2018.jpg",
  description: "Samsung Galaxy A6+ (2018)", price: "8990000", quantity: "100")
Product.create!(name: "HP Pavilion x360 ba080TU i3", category_id: "3", manufacture_id: "9",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533441890/phone/hp-pavilion-x360-ba080tu.jpg",
  description: "HP Pavilion x360 ba080TU i3", price: "13490000", quantity: "100")
Product.create!(name: "HP Envy 13 ah0027TU i7", category_id: "3", manufacture_id: "9",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431120/products/hp-envy-13.jpg",
  description: "HP Envy 13 ah0027TU i7", price: "26990000", quantity: "100")
Product.create!(name: "Acer Swift SF314 54 51QL i5", category_id: "3", manufacture_id: "10",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431119/products/acer-swift.jpg",
  description: "Acer Swift SF314 54 51QL i5", price: "16990000", quantity: "100")
Product.create!(name: "iPad Wifi Cellular 128GB", category_id: "2", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431119/products/ipad-6th-wifi-cellular.jpg",
  description: "iPad Wifi Cellular 128GB", price: "14990000", quantity: "100")
Product.create!(name: "eValu PA L10", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533442059/accessory/pin-sac-du-phong-polymer-10000mah.jpg",
  description: "eValu PA L10", price: "400000", quantity: "100")
Product.create!(name: "Mifa BV150", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533442062/accessory/loa-bluetooth-mifa.jpg",
  description: "Mifa BV150", price: "260000", quantity: "100")
Product.create!(name: "Cáp Xmobile MU03", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431120/products/cap-micro-usb-20cm-x-mobile.jpg",
  description: "Cáp Xmobile MU03", price: "40000", quantity: "100")
Product.create!(name: "Micro SD 8GB class 4", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533442074/accessory/the-nho-microsd-8gb.jpg",
  description: "Micro SD 8GB class 4", price: "150000", quantity: "100")
Product.create!(name: "iPhone X 256GB Silver", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430883/phone/iphone-x-256gb-silver.jpg",
  description: "iPhone X 256GB Silver", price: "34790000", quantity: "100")
Product.create!(name: "iPhone X 256GB Gray", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430883/phone/iphone-x-256gb-gray.jpg",
  description: "iPhone X 256GB Gray", price: "34790000", quantity: "100")
Product.create!(name: "iPhone X 64GB Silver", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430882/phone/iphone-x-64gb-silver.jpg",
  description: "iPhone X 64GB Silver", price: "29990000", quantity: "100")
Product.create!(name: "iPhone X 64GB Gray", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430882/phone/iphone-x-64gb-gray.jpg",
  description: "iPhone X 64GB Gray", price: "29990000", quantity: "100")
Product.create!(name: "iPhone 8 Plus Red", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430881/phone/iphone-8-plus-red.jpg",
  description: "iPhone 8 Plus Red", price: "28790000", quantity: "100")
Product.create!(name: "iPhone 8 256GB", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430881/phone/iphone-8-256gb.jpg",
  description: "iPhone 8 256GB", price: "25790000", quantity: "100")
Product.create!(name: "iPhone 8 Plus Red 64GB", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430881/phone/iphone-8-red-do-2.jpg",
  description: "iPhone 8 Plus Red 64GB", price: "20990000", quantity: "100")
Product.create!(name: "iPhone 8 64GB", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430879/phone/iphone-8-64gb-hh.jpg",
  description: "iPhone 8 64GB", price: "20990000", quantity: "100")
Product.create!(name: "iPhone 7 Plus 32GB", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430880/phone/iphone-7-plus-32gb-hh.jpg",
  description: "iPhone 7 Plus 32GB", price: "19990000", quantity: "100")
Product.create!(name: "iPhone 6 Plus 32GB", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430879/phone/iphone-6s-plus-32gb-hh.jpg",
  description: "iPhone 6 Plus 32GB", price: "12990000", quantity: "100")
Product.create!(name: "Samsung Galaxy S9+ 128GB", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430885/phone/samsung-galaxy-s9-plus-128gb-2.jpg",
  description: "Samsung Galaxy S9+ 128GB", price: "24490000", quantity: "100")
Product.create!(name: "iPhone 7 Plus 128GB", category_id: "1", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430881/phone/iphone-7-plus-128gb-hh.jpg",
  description: "iPhone 7 Plus 128GB", price: "23990000", quantity: "100")
Product.create!(name: "Samsung Galaxy S9+ 64GB", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430885/phone/samsung-galaxy-s9-plus-64gb-tim.jpg",
  description: "Samsung Galaxy S9+ 64GB", price: "23490000", quantity: "100")
Product.create!(name: "Samsung Galaxy Note 8", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430883/phone/samsung-galaxy-note8-black.jpg",
  description: "Samsung Galaxy Note 8", price: "19990000", quantity: "100")
Product.create!(name: "Huawei P20 Pro", category_id: "1", manufacture_id: "12",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430880/phone/huawei-p20-pro-2.jpg",
  description: "Huawei P20 Pro", price: "19990000", quantity: "100")
Product.create!(name: "Samsung Galaxy S8 Plus", category_id: "1", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430884/phone/samsung-galaxy-s8-plus-hh.jpg",
  description: "Samsung Galaxy S8 Plus", price: "17990000", quantity: "100")
Product.create!(name: "Sony Xperia XZ2", category_id: "1", manufacture_id: "13",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430885/phone/sony-xperia-xz2-1.jpg",
  description: "Sony Xperia XZ2", price: "16990000", quantity: "100")
Product.create!(name: "iPad Pro 10.5 inch Cellular 64GB", category_id: "2", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431052/tablet/ipad-pro-105-inch-wifi-cellular-64gb-2017-thumb.jpg",
  description: "iPad Pro 10.5 inch Cellular 64GB", price: "19990000", quantity: "100")
Product.create!(name: "iPad Pro 10.5 inch Wifi 64GB", category_id: "2", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431053/tablet/ipad-wifi-cellular-128gb-2018-thumb.jpg",
  description: "iPad Pro 10.5 inch Wifi 64GB", price: "16990000", quantity: "100")
Product.create!(name: "iPad-wifi-cellular-32g-2018", category_id: "2", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431051/tablet/ipad-pro-105-inch-wifi-64gb-2017.jpg",
  description: "iPad-wifi-cellular-32g-2018", price: "12990000", quantity: "100")
Product.create!(name: "iPad Mini 4 Wifi 128GB", category_id: "2", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431051/tablet/ipad-mini-4-wifi-128gb.jpg",
  description: "iPad Mini 4 Wifi 128GB", price: "9990000", quantity: "100")
Product.create!(name: "iPad Wifi 128 GB (2018)", category_id: "2", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431052/tablet/ipad-wifi-128-gb-2018.jpg",
  description: "iPad Wifi 128 GB (2018)", price: "11990000", quantity: "100")
Product.create!(name: "iPad Wifi Cellular 32GB (2017)", category_id: "2", manufacture_id: "3",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431053/tablet/ipad-wifi-cellular-32gb-2017.jpg",
  description: "iPad Wifi Cellular 32GB (2017)", price: "10990000", quantity: "100")
Product.create!(name: "Samsung Galaxy Tab A6 10.1", category_id: "2", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431053/tablet/samsung-galaxy-tab-a6-101-spen.jpg",
  description: "Samsung Galaxy Tab A6 10.1", price: "7490000", quantity: "100")
Product.create!(name: "Huawei MediaPad M3 8.0 (2017)", category_id: "2", manufacture_id: "12",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431051/tablet/huawei-mediapad-m3.jpg",
  description: "Huawei MediaPad M3 8.0 (2017)", price: "5490000", quantity: "100")
Product.create!(name: "Samsung Galaxy Tab A 8.0 (2017)", category_id: "2", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431053/tablet/samsung-galaxy-tab-a-80-2017.jpg",
  description: "Samsung Galaxy Tab A 8.0 (2017)", price: "5490000", quantity: "100")
Product.create!(name: "Huawei MediaPad T3 10 (2017)", category_id: "2", manufacture_id: "12",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431051/tablet/huawei-mediapad-t3-10.jpg",
  description: "Huawei MediaPad T3 10 (2017)", price: "4990000", quantity: "100")
Product.create!(name: "Samsung Galaxy Tab E 9.6", category_id: "2", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431054/tablet/samsung-galaxy-tab-e-96-sm-t561.jpg",
  description: "Samsung Galaxy Tab E 9.6", price: "3990000", quantity: "100")
Product.create!(name: "Huawei MediaPad T3 8.0 (2017)", category_id: "2", manufacture_id: "12",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431051/tablet/huawei-mediapad-t3-80.jpg",
  description: "Huawei MediaPad T3 8.0 (2017)", price: "3990000", quantity: "100")
Product.create!(name: "Lenovo Tab 4 8 inch 16GB", category_id: "2", manufacture_id: "14",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431053/tablet/lenovo-tab-4-8-tb-8504x.jpg",
  description: "Lenovo Tab 4 8 inch 16GB", price: "3990000", quantity: "100")
Product.create!(name: "Acer Aspire E5 576G 7927 i7", category_id: "3", manufacture_id: "10",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430983/laptop/acer-aspire-e5-576g-7927.jpg",
  description: "Acer Aspire E5 576G 7927 i7", price: "15990000", quantity: "100")
Product.create!(name: "HP 15 bs571TU i3", category_id: "3", manufacture_id: "9",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430987/laptop/hp-15-bs571tu-i3.jpg",
  description: "HP 15 bs571TU i3", price: "9890000", quantity: "100")
Product.create!(name: "Asus X510UA i3", category_id: "3", manufacture_id: "11",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430983/laptop/asus-x510ua-i3.jpg",
  description: "Asus X510UA i3", price: "11290000", quantity: "100")
Product.create!(name: "HP 15 bs646TU i3", category_id: "3", manufacture_id: "9",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430988/laptop/hp-15-bs646tu.jpg",
  description: "HP 15 bs646TU i3", price: "10190000", quantity: "100")
Product.create!(name: "Acer Aspire ES1 432", category_id: "3", manufacture_id: "10",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430983/laptop/acer-aspire-es1-432-c3c9.jpg",
  description: "Acer Aspire ES1 432", price: "62990000", quantity: "100")
Product.create!(name: "Acer Aspire A314", category_id: "3", manufacture_id: "10",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430983/laptop/acer-aspire-a314-31-c2ux.jpg",
  description: "Acer Aspire A314", price: "6490000", quantity: "100")
Product.create!(name: "Asus X441NA (GA070T)", category_id: "3", manufacture_id: "11",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430983/laptop/asus-x441na-n4200.jpg",
  description: "Asus X441NA (GA070T)", price: "7490000", quantity: "100")
Product.create!(name: "Acer Aspire A315", category_id: "3", manufacture_id: "10",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430984/laptop/acer-aspire-a315-31-p2lj.jpg",
  description: "Acer Aspire A315", price: "7590000", quantity: "100")
Product.create!(name: "HP 15 bs641TU", category_id: "3", manufacture_id: "9",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430987/laptop/hp-15-bs641tu-n3710.jpg",
  description: "HP 15 bs641TU", price: "7690000", quantity: "100")
Product.create!(name: "HP 15 da0048TU", category_id: "3", manufacture_id: "9",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430988/laptop/hp-15-da0048tu-4me63pa.jpg",
  description: "Acer Aspire A314", price: "7690000", quantity: "100")
Product.create!(name: "Dell Vostro 3468 i3", category_id: "3", manufacture_id: "8",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430987/laptop/dell-vostro-3468-70142649.jpg",
  description: "Dell Vostro 3468 i3", price: "11290000", quantity: "100")
Product.create!(name: "Dell Vostro 3468 i5", category_id: "3", manufacture_id: "8",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430987/laptop/dell-vostro-3468-i5.png",
  description: "Dell Vostro 3468 i5", price: "13790000", quantity: "100")
Product.create!(name: "Dell Vostro 3578 i7", category_id: "3", manufacture_id: "8",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430987/laptop/dell-vostro-3578-ngmpf11.jpg",
  description: "Dell Vostro 3578 i7", price: "20990000", quantity: "100")
Product.create!(name: "Dell Inspiron 3567 i3", category_id: "3", manufacture_id: "8",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430986/laptop/dell-inspiron-3567-i3.png",
  description: "Dell Inspiron 3567 i3", price: "11390000", quantity: "100")
Product.create!(name: "Dell Vostro 5568 i5", category_id: "3", manufacture_id: "8",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533430985/laptop/dell-vostro-5568-077m52.png",
  description: "Dell Vostro 5568 i5", price: "15490000", quantity: "100")

Product.create!(name: "Dây cáp Lightning 0.2 m eValu AL01-2000", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431032/accessory/cap-lightning-20cm.jpg",
  description: "Dây cáp Lightning 0.2 m", price: "42000", quantity: "100")
Product.create!(name: "Pin sạc dự phòng 15000mAh Xmobile", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431034/accessory/pin-sac-du-phong-15000mah.jpg",
  description: "Pin sạc dự phòng 15000mAh Xmobile", price: "552000", quantity: "100")
Product.create!(name: "Tai nghe Bluetooth Roman R553N Đen", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431034/accessory/tai-nghe-bluetooth-roman.jpg",
  description: "Tai nghe Bluetooth Roman R553N Đen", price: "195000", quantity: "100")
Product.create!(name: "Sạc dây Micro USB 1.2 m Xmobile", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431035/accessory/sac-day-x-mobile-micro-ts.jpg",
  description: "Sạc dây Micro USB 1.2 m Xmobile", price: "84000", quantity: "100")
Product.create!(name: "Tai nghe nhét trong Samsung EG920B", category_id: "4", manufacture_id: "2",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431035/accessory/tai-nghe-nhet-trong-samsung.jpg",
  description: "Tai nghe nhét trong Samsung EG920B", price: "2400000", quantity: "100")
Product.create!(name: "Dây cáp Micro USB 0.2 m Xmobile", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431032/accessory/cap-micro-usb-20cm-x-mobile.jpg",
  description: "Dây cáp Micro USB 0.2 m Xmobile", price: "20000", quantity: "100")
Product.create!(name: "Dây cáp iPhone 4, iPhone 4s", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431035/accessory/cap-x-mobile-iphone-4.jpg",
  description: "Dây cáp iPhone 4, iPhone 4s", price: "51000", quantity: "100")
Product.create!(name: "Móc dán điện thoại OSMIA RingCK039", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431032/accessory/moc-dan-dien-thoai-osmia.jpg",
  description: "Móc dán điện thoại OSMIA RingCK039", price: "22000", quantity: "100")
Product.create!(name: "Sạc dây Nokia đầu nhỏ 1 m eSaver X032", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431035/accessory/sac-day-nokia-dau-nho-esaver.jpg",
  description: "Sạc dây Nokia đầu nhỏ 1 m eSaver X032", price: "400000", quantity: "100")
Product.create!(name: "Cáp 2 đầu Type C Micro 1m eValu", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431033/accessory/cap-2-dau-type-c-micro-1m-evalu.jpg",
  description: "Cáp 2 đầu Type C Micro 1m eValu", price: "90000", quantity: "100")
Product.create!(name: "Mobell Tab 8 Pro", category_id: "2", manufacture_id: "15",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533431053/tablet/mobell-tab-8-pro.jpg",
  description: "Mobell Tab 8 Pro", price: "2990000", quantity: "100")
Product.create!(name: "Tai nghe chụp tai Kanen IP-892", category_id: "4", manufacture_id: "1",
  picture: "https://res.cloudinary.com/mobile-world/image/upload/v1533442072/accessory/tai-nghe-chup-tai-kanen-ip.jpg",
  description: "Tai nghe chụp tai Kanen IP-892", price: "195000", quantity: "100")

puts "Created #{Product.count} products!"

puts "Done!"
