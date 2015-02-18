json.array!(@exercises_groups) do |exercises_group|
  json.extract! exercises_group, :id, :name, :description
  json.url exercises_group_url(exercises_group, format: :json)
end
