json.extract! submission, :id, :user_id, :template_id, :created_at, :updated_at
json.url submission_url(submission, format: :json)
