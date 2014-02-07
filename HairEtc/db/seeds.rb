# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Stylist.create(first_name: "Theresa", last_name: "Colaizzi", phone: "4127219550")
Stylist.create(first_name: "Chrissy", last_name: "Darnley", phone: "4127219550")
Stylist.create(first_name: "Stacy", last_name: "Funwella", phone: "4127219550")

# Appointment.create(date: "Wed, 05 Feb 2014", time: "13:00:00 UTC", client_id: 1)
# Appointment.create(date: "Wed, 05 Feb 2014", time: "13:00:00 UTC", client_id: 1)
# Appointment.create(date: "Wed, 05 Feb 2014", time: "13:00:00 UTC", client_id: 2)

# Schedule.create(stylist_id: 1, appointment_id: 1)
# Schedule.create(stylist_id: 2, appointment_id: 2)
# Schedule.create(stylist_id: 3, appointment_id: 3)

Service.create(name: "Cut/Style")
Service.create(name: "Color")
Service.create(name: "Hilights")
Service.create(name: "Wax")
Service.create(name: "Updo")
Service.create(name: "Perm")
Service.create(name: "Brazilian Blowout")

# Appserv.create(appointment_id: 1, service_id: 1)
# Appserv.create(appointment_id: 1, service_id: 2)
# Appserv.create(appointment_id: 1, service_id: 4)
# Appserv.create(appointment_id: 2, service_id: 5)
# Appserv.create(appointment_id: 3, service_id: 5)
# Appserv.create(appointment_id: 3, service_id: 6)

# Client.create(first_name: "Franco", last_name: "Colaizzi", phone: "4127219550", email: "fnc314@gmail.com", password: "asdfgh", password_confirmation: "asdfgh")
# Client.create(first_name: "Nina", last_name: "Pacifico", phone: "4127219550", email: "npac@gmail.com", password: "asdfgh", password_confirmation: "asdfgh")