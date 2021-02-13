json.extract! student, :id, :adm_no, :first_name, :last_name, :stream_id, :created_at, :updated_at
json.url student_url(student, format: :json)
