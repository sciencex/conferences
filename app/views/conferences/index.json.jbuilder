json.array!(@conferences) do |conference|
  json.extract! conference, :name, :abbreviation
  json.url conference_url(conference, format: :json)
end
