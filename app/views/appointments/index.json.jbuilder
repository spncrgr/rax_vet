json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :require_reminder, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
