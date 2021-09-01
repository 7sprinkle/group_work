json.extract! weblog, :id, :title, :, :content, :, :created_at, :updated_at
json.url weblog_url(weblog, format: :json)
