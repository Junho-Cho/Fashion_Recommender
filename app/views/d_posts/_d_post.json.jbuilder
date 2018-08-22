json.extract! d_post, :id, :title, :content, :created_at, :updated_at
json.url d_post_url(d_post, format: :json)
