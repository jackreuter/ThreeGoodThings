json.array!(@three_good_things) do |three_good_thing|
  json.extract! three_good_thing, :id, :1, :2, :3
  json.url three_good_thing_url(three_good_thing, format: :json)
end
