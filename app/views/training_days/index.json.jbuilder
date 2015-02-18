json.array!(@training_days) do |training_day|
  json.extract! training_day, :id, :date
  json.url training_day_url(training_day, format: :json)
end
