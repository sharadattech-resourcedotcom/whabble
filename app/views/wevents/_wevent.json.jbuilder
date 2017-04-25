json.extract! wevent, :id, :weventname, :weventdesc, :weventstart, :weventstop, :weventcat, :weventtype, :weventrepeat, :weventprivate, :weventbusy, :created_at, :updated_at
json.url wevent_url(wevent, format: :json)
