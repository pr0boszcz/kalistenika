json.array!(@series) do |series|
  json.extract! series, :id, :repeats
  json.url series_url(series, format: :json)
end
