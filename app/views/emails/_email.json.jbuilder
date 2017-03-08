json.extract! email, :id, :to, :user_full_name, :addressee, :text, :created_at, :updated_at
json.url email_url(email, format: :json)
