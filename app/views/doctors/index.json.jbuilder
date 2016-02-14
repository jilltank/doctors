json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :speciality, :city
  json.url doctor_url(doctor, format: :json)
end
