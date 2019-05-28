# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(name: "Luis Perez",
     		email: "jasa@gmail.com",
			password: 'foobar',
			password_confirmation: 'foobar',
			role: "personal")

User.create(name: "Juan Antonio",
			email: "jasa1@gmail.com",
			password: 'foobar',
			password_confirmation: 'foobar',
			role: "personal")

User.create(name: "Luis Alberto",
			email: "jasa2@gmail.com",
			password: 'foobar',
			password_confirmation: 'foobar',
			role: "personal")

carrera = Carrera.create(name: 'Administración de Empresas')
carrera = Carrera.create(name: 'Antropología')
carrera = Carrera.create(name: 'Comunicación Social')
carrera = Carrera.create(name: 'Contaduría Pública')
carrera = Carrera.create(name: 'Derecho')
carrera = Carrera.create(name: 'Enfermería')
carrera = Carrera.create(name: 'Filosofía y Letras')
carrera = Carrera.create(name: 'Ingeniería Civil')
carrera = Carrera.create(name: 'Ingeniería de Sistemas')
carrera = Carrera.create(name: 'Ingeniería Ambiental')
carrera = Carrera.create(name: 'Ingeniería Mecatrónica')
carrera = Carrera.create(name: 'Ingeniería de Telecomunicaciones')#
carrera = Carrera.create(name: 'Ingeniería Química')
carrera = Carrera.create(name: 'Ingeniería Industrial')
carrera = Carrera.create(name: 'Ingeniería Financieria')
carrera = Carrera.create(name: 'Ingeniería Comercial')
carrera = Carrera.create(name: 'Psicología')
carrera = Carrera.create(name: 'Teología')
