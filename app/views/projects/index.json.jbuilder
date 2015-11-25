json.array!(@projects) do |project|
  json.extract! project, :id, :name, :photo, :description, :date
  json.url project_url(project, format: :json)
end
