json.extract! reservation, :id, :reservationname, :resqty, :resdate, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
