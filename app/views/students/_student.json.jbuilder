json.extract! student, :id, :adm_no, :first_name, :last_name, :classroom_id, :stream_id, :created_at, :updated_at
json.url student_url(student, format: :json)
