json.array!(@upcodes) do |upcode|
  json.extract! upcode, :id, :upc
  json.url upcode_url(upcode, format: :json)
end
