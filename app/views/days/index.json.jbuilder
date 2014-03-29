json.array!(@days) do |day|
  json.extract! day, :id, :dayOfTheWeek, :date, :month, :year, :thingOne, :thingTwo, :thingThree
  json.url day_url(day, format: :json)
end
