json.array!(@projects) do |project|
  json.extract! project, :id, :references, :references
  json.url project_url(project, format: :json)
end
