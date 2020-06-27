# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all
Client.destroy_all
MassageTherapist.destroy_all


mt1 = MassageTherapist.create(name: "paul rosero", sex: "male", rating: 5)
mt2 = MassageTherapist.create(name: "mary smith", sex: "female", rating: 5)

client1 = Client.create(name: "julieta johnson", medical_history: "none", address: "long island", email: "julieta@julieta.com")
client2 = Client.create(name: "gair johnson", medical_history: "diabetes", address: "long island", email: "gair@gair.com")

app1 = Appointment.create(massage_therapist: mt1, client: client1, modality: "swedish", date_and_time: DateTime.parse('3rd Feb 2001 04:00pm'), special_request: "")
app2 = Appointment.create(massage_therapist: mt2, client: client2, modality: "hot stone", date_and_time: "2020-09-27 10:30am", special_request: "")