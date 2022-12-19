json.array!(@guests) do |guest|
    json.name guest.name
    json.age guest.age
    json.color guest.favorite_color
end