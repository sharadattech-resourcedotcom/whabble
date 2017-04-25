json.extract! ticket, :id, :ticketname, :ticketperformer, :ticketeventdate, :ticketseatsec, :ticketseatlevel, :ticketseatrow, :ticketseat, :ticketprice, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
