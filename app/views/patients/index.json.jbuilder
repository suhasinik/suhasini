json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :phone, :address, :appointment
  json.url patient_url(patient, format: :json)
end
