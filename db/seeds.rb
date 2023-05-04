# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "maxretana981@gmail.com", name: "Maximiliano", nacount: "20167423", role: "admin", password: "123456", password_confirmation: "123456")
User.create(email: "dcarmona@ucol.mx", name: "Berenice", nacount: "20179540", role: "encargado", password: "123456", password_confirmation: "123456")
User.create(email: "nretana@ucol.mx", name: "Nathaly", nacount: "20200011", role: "estudiante", password: "123456", password_confirmation: "123456")
User.create(email: "raparicion@ucol.mx", name: "Rodrigo", nacount: "20167050", role: "encargado", password: "123456", password_confirmation: "123456")
User.create(email: "ctinoco@ucol.mx", name: "Andrea", nacount: "20167581", role: "estudiante", password: "123456", password_confirmation: "123456")
User.create(email: "emontano@ucol.mx", name: "Eduard", nacount: "20190270", role: "encargado", password: "123456", password_confirmation: "123456")
User.create(email: "jmedina@ucol.mx", name: "Jessica", nacount: "20165747", role: "estudiante", password: "123456", password_confirmation: "123456")