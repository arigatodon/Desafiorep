json.array!(@proyects) do |proyect|
  json.extract! proyect, :id, :user_id
  json.url proyect_url(proyect, format: :json)
end
