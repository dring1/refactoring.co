json.array!(@refactors) do |refactor|
  json.extract! refactor, :id, :code
  json.url refactor_url(refactor, format: :json)
end
