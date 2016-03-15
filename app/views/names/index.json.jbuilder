json.array!(@names) do |name|
  json.extract! name, :id, :speciality, :phone_no, :appointments, :address
  json.url name_url(name, format: :json)
end
