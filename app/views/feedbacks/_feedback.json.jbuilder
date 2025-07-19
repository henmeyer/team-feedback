json.extract! feedback, :id, :account_id, :sender_id, :receiverable_type, :receiverable_id, :title, :content, :status, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
