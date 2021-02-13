# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
years = Year.create([{year: '2021'}, {year: '2022'}, {year: '2023'}, {year: '2024'}, {year: '2025'}])
classes = Classroom.create([{year_id: 1, name: "One", number: 1}, {year_id: 1, name: "Two", number: 2}, {year_id: 1, name: "Three", number: 3}, {year_id: 1, name: "Four", number: 4}])
streams = Stream.create([{classroom_id: 1, name: "Green"}, {classroom_id: 1, name: "Red"}, {classroom_id: 2, name: "Green"}, {classroom_id: 2, name: "Red"}])
students = Student.create([
	# Class One
	{classroom_id: 1, stream_id: 1, adm_no: 1234, first_name: "Steve", last_name: "Wonder" },
	{classroom_id: 1, stream_id: 2, adm_no: 1235, first_name: "Paul", last_name: "Wonder" },
	{classroom_id: 1, stream_id: 1, adm_no: 1236, first_name: "Pedro", last_name: "Wonder" },
	{classroom_id: 1, stream_id: 2, adm_no: 1237, first_name: "Juan", last_name: "Wonder" },
	{classroom_id: 1, stream_id: 1, adm_no: 1238, first_name: "Josephat", last_name: "Wonder" },
	{classroom_id: 1, stream_id: 2, adm_no: 1239, first_name: "Pope", last_name: "Wonder" },
	# Class Two
	{classroom_id: 2, stream_id: 3, adm_no: 1234, first_name: "Stella", last_name: "Wonder" },
	{classroom_id: 2, stream_id: 4, adm_no: 1235, first_name: "Paullet", last_name: "Wonder" },
	{classroom_id: 2, stream_id: 3, adm_no: 1236, first_name: "Perci", last_name: "Wonder" },
	{classroom_id: 2, stream_id: 4, adm_no: 1237, first_name: "Juliet", last_name: "Wonder" },
	{classroom_id: 2, stream_id: 3, adm_no: 1238, first_name: "Josephine", last_name: "Wonder" },
	{classroom_id: 2, stream_id: 4, adm_no: 1239, first_name: "Prisca", last_name: "Wonder" }
])
