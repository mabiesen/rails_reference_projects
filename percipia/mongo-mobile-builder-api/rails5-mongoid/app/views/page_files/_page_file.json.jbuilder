json.extract! page_file, :id, :type, :name, :link, :created_at, :updated_at
json.url page_file_url(page_file, format: :json)
