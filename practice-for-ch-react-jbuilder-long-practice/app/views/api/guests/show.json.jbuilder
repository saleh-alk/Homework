


json.name @guest.name
json.age @guest.age
json.color @guest.favorite_color

# json.partial! "api/guests/guest", guest: @guest
# json.gifts @guest.gifts do |gift|
#   json.partial! 'api/gifts/gift', gift: gift
#   json.party gift.party.name
# end

json.partial! "api/guests/guest", guest: @guest
json.gifts @guest.gifts do |gift|
    json.title gift.title
    json.description gift.description
    json.party gift.party.name
    #json.partial! 'api/gifts/gift', gift: gift
    #json.party gift.party.name
end

