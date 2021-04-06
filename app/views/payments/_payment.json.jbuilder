json.extract! payment, :id, :amount, :date, :method, :student_id, :fee_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
