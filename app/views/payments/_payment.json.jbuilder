json.extract! payment, :id, :TransactionId, :date, :amount, :bank, :method, :student_id, :fee_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
