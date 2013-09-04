json.array!(@visits) do |visit|
  json.extract! visit, :venue, :city, :date, :price, :ambience, :tea, :scones, :savoury, :sweets, :service, :bonus, :comments
  json.url visit_url(visit, format: :json)
end
