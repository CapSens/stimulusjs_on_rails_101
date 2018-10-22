json.extract! comment, :id, :user_id, :content, :visible_from, :visible_until, :reported, :created_at, :updated_at
json.url comment_url(comment, format: :json)
