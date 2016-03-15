json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :phone, :gender, :address
  json.url contact_url(contact, format: :json)
end
