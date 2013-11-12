json.array!(@divsions) do |divsion|
  json.extract! divsion, :name
  json.url divsion_url(divsion, format: :json)
end
