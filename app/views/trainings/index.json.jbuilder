json.array!(@trainings) do |training|
  json.extract! training, :id, :name, :level
  json.url training_url(training, format: :json)
end
