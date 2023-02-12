json.extract! card, :id, :description, :status, :created_at, :updated_at
json.url card_url(card, format: :json)
