json.array!(@registrations) do |registration|
  json.extract! registration, :id, :name, :email, :cell, :category, :gender, :address
  json.url registration_url(registration, format: :json)
end
