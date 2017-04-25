json.extract! venue, :id, :venuename, :venuedescription, :venuetagline, :venueurl, :venuephone, :venueemail, :created_at, :updated_at
json.url venue_url(venue, format: :json)
