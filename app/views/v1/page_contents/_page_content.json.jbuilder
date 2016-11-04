json.extract! page_content, :id, :links, :h1_texts, :h2_texts, :h3_texts :source, :created_at, :updated_at
json.url page_content_url(page_content, format: :json)
