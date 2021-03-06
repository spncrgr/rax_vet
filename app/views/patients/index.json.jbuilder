json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :pet_type, :breed, :age, :weight, :date_of_last_appointment
  json.url patient_url(patient, format: :json)
end
