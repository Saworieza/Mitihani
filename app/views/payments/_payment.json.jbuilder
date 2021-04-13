json.extract! payment, :id, :amount, :method, :fee_id, :student_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
