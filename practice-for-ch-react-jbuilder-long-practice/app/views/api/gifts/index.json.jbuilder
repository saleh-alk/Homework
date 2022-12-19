

json.array!(@gifts) do |gift|
    json.title gift.title
    json.description gift.description
    json.party gift.party.name

end

