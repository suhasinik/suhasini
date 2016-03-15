json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :email, :cell
  json.url supplier_url(supplier, format: :json)
end
