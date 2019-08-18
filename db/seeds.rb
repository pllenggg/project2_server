# frozen_string_literal: true

Booking.destroy_all
Service.destroy_all
Category.destroy_all
Retail.destroy_all
Customer.destroy_all
User.destroy_all

admin = User.create email: 'admin@ga.co', password: 'chicken', user_type: 'ADMIN'
amy = User.create email: 'amy@ga.co', password: 'chicken', user_type: 'CUSTOMER'
nilana = User.create email: 'nilana@ga.co', password: 'chicken', user_type: 'CUSTOMER'
plleng = User.create email: 'plleng@ga.co', password: 'chicken', user_type: 'CUSTOMER'
mee = User.create email: 'mee@ga.co', password: 'chicken', user_type: 'CUSTOMER'
amy_retail = User.create email: 'amy_retail@ga.co', password: 'chicken', user_type: 'RETAIL'
nilana_retail = User.create email: 'nilana_retail@ga.co', password: 'chicken', user_type: 'RETAIL'
plleng_retail = User.create email: 'plleng_retail@ga.co', password: 'chicken', user_type: 'RETAIL'
puts 'creat users success'

nails = Category.create title: 'Nails', image: 'https://images-na.ssl-images-amazon.com/images/I/61odgeUFWvL._SY355_.jpg'
hair = Category.create title: 'Hairdressing', image: 'https://www.lasrias.com.au/wp-content/uploads/2017/10/Screen-Shot-2017-10-25-at-9.56.49-am.png'
eye = Category.create title: 'Eyes, Brows & Lashes', image: 'https://acharmedlifenailsalon.com/wp-content/uploads/2017/02/eyelashes2-1500x430.jpg'

puts 'create categories success'

c1 = Customer.create user_id: amy.id, full_name: 'amy', phone: '1234567'
c2 = Customer.create user_id: nilana.id, full_name: 'nilana', phone: '78990'
c3 = Customer.create user_id: plleng.id, full_name: 'plleng', phone: '54321'
c4 = Customer.create user_id: mee.id, full_name: 'mee', phone: '7853679'
puts 'create customers success'

nail_retail = Retail.create user_id: amy_retail.id, address1: '2/303', address2: 'Liverpool St', suburb: 'Darlinghurst', postcode: '2010', retail_name: 'amy nail design'

hair_retail = Retail.create user_id: nilana_retail.id, address1: 'Shop 116-117 Dixon House', address2: '413-415 Sussex Street', suburb: 'Haymarket', postcode: '2000', retail_name: 'In Air Art'

eyes_retail = Retail.create user_id: plleng_retail.id, address1: 'Room 425, Level 4', address2: '95 Pitt St', suburb: 'Sydney CBD', postcode: '2000', retail_name: 'RM Lash and Beauty'
puts 'create reails success'

nail_service1 = Service.create category_id: nails.id, title: 'Acrylic Nails', description: 'Acrylic (Full Set)', price: 40, duration: 30, ispopular: true, retail_id: nail_retail.user_id

nail_service2 = Service.create category_id: nails.id, title: 'Acrylic Nails', description: 'Gel (Full Set)', price: 45, duration: 30, ispopular: false, retail_id: amy_retail.id

nail_service3 = Service.create category_id: nails.id, title: 'Pedicure Shellac', description: 'Shellac Nails', price: 45, duration: 40, ispopular: true, retail_id: amy_retail.id

nail_service4 = Service.create category_id: nails.id, title: 'Manicure + Pedicure', description: 'Manicure + Pedicure + Shellac', price: 80, duration: 65, ispopular: true, retail_id: amy_retail.id
puts 'create nail services success'

hair_service1 = Service.create category_id: hair.id, title: 'Hair Styling', description: "Ladies' Shampoo + Blow Dry - Long Hair", price: 60, duration: 45, ispopular: false, retail_id: nilana_retail.id

hair_service2 = Service.create category_id: hair.id, title: 'Hair Styling', description: "Ladies' Hair Cut + Blow Dry - Long Hair", price: 68, duration: 60, ispopular: true, retail_id: nilana_retail.id

hair_service3 = Service.create category_id: hair.id, title: 'Hair Coloring', description: "Ladies' Color - Long Hair", price: 200, duration: 120, ispopular: false, retail_id: nilana_retail.id

hair_service4 = Service.create category_id: hair.id, title: 'Foil', description: "Ladies' Foil (1/4 Head, 1/2 Head, Full Head) - Long Hair", price: 90, duration: 90, ispopular: false, retail_id: nilana_retail.id
puts 'create hair services success'

eyes_service1 = Service.create category_id: eye.id, title: 'Eyelash Extensions', description: 'Eyelash Extensions - Classic / 2D (Natural look)', price: 149, duration: 105, ispopular: true, retail_id: plleng_retail.id

eyes_service2 = Service.create category_id: eye.id, title: 'Eyelash Infill', description: 'Infills - (if you have your lashes done by someone else please book in for removal and full set.) If lashes have been done previously 2-4 weeks ago. And still, have about 50% lashes left. Infills appointment is all you need. You can leave the salon with that brand new eye look again.', price: 129, duration: 90, ispopular: false, retail_id: plleng_retail.id

eyes_service3 = Service.create category_id: eye.id, title: 'Eyebrow Wax + Tinting', description: '', price: 50, duration: 30, ispopular: false, retail_id: plleng_retail.id

eyes_service4 = Service.create category_id: eye.id, title: 'Eyelash Extensions - Russian Volume 3D-5D (Glamorous Look)', description: '', price: 179, duration: 120, ispopular: true, retail_id: plleng_retail.id

puts 'create eyes service success'

Booking.create user_id: amy.id, date: '2019-08-02', retail_id: amy_retail.id, service_id: nail_service2.id, booking_time: 2

Booking.create user_id: amy.id, date: '2019-08-10', retail_id: amy_retail.id, service_id: nail_service3.id, booking_time: 4

Booking.create user_id: amy.id, date: '2019-09-01', retail_id: amy_retail.id, service_id: nail_service1.id, booking_time: 1

Booking.create user_id: nilana.id, date: '2019-07-10', retail_id: nilana_retail.id, service_id: hair_service1.id, booking_time: 4

Booking.create user_id: nilana.id, date: '2019-08-22', retail_id: nilana_retail.id, service_id: hair_service1.id, booking_time: 3

Booking.create user_id: nilana.id, date: '2019-08-19', retail_id: nilana_retail.id, service_id: hair_service2.id, booking_time: 2

Booking.create user_id: plleng.id, date: '2019-08-19', retail_id: plleng_retail.id, service_id: eyes_service3.id, booking_time: 2

Booking.create user_id: plleng.id, date: '2019-09-20', retail_id: plleng_retail.id, service_id: eyes_service1.id, booking_time: 1

Booking.create user_id: plleng.id, date: '2019-08-01', retail_id: plleng_retail.id, service_id: eyes_service4.id, booking_time: 2

puts 'create booking data success'
