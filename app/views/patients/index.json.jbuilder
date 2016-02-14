json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :blood_type, :city
  json.url patient_url(patient, format: :json)
end
