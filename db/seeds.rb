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
subjects = Subject.create([
	{code: 101, short: "Eng", name: "English"}, 
	{code: 102, short: "Kisw", name: "Kiswahili"},
	{code: 121, short: "Math", name: "Mathematics"},
	{code: 231, short: "Bio", name: "Biology"},
	{code: 233, short: "Chem", name: "Chemistry"},
	{code: 232, short: "Phy", name: "Physics"},
	{code: 312, short: "Geo", name: "Geography"},
	{code: 311, short: "Hist", name: "History"},
	{code: 313, short: "CRE", name: "CRE"},
	{code: 502, short: "Ger", name: "German"},
	{code: 441, short: "Hsc", name: "Home Science"},
	{code: 565, short: "BS", name: "Business Studies"},
	{code: 443, short: "Agri", name: "Agriculture"}
])
terms = Term.create([
	{year_id: 1, name: "Term One"},
	{year_id: 1, name: "Term Two"},
	{year_id: 1, name: "Term Three"},
	{year_id: 2, name: "Term One"},
	{year_id: 2, name: "Term Two"},
	{year_id: 2, name: "Term Three"},
	{year_id: 3, name: "Term One"},
	{year_id: 3, name: "Term Two"},
	{year_id: 3, name: "Term Three"}
])
exams = Exam.create([
	{term_id: 1, name: "Opener"},
	{term_id: 1, name: "Mid Term"},
	{term_id: 1, name: "End Term"},
  {term_id: 2, name: "Opener"},
	{term_id: 2, name: "Mid Term"},
	{term_id: 2, name: "End Term"}
])
results = Result.create([
	{stream_id: 1, subject_id: 1, exam_id: 1},
	{stream_id: 1, subject_id: 1, exam_id: 2},
	{stream_id: 1, subject_id: 1, exam_id: 3},
	{stream_id: 2, subject_id: 1, exam_id: 1},
	{stream_id: 2, subject_id: 1, exam_id: 2},
	{stream_id: 2, subject_id: 1, exam_id: 3}
])
