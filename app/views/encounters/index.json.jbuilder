json.array!(@encounters) do |encounter|
  json.extract! encounter, :id, :date_time_started, :date_time_ended, :requires_follow-up, :follow-up_in, :diagnoses, :prescription, :notes
  json.url encounter_url(encounter, format: :json)
end
