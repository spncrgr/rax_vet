json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :address_1, :address_2, :city, :state, :zip_code, :school_attended, :years_in_practice, :doctor, :admin
  json.url employee_url(employee, format: :json)
end
