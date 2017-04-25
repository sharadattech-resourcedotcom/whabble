json.extract! wuserprofile, :id, :wusername, :wuserfirst, :wuserlast, :wuseremail, :created_at, :updated_at
json.url wuserprofile_url(wuserprofile, format: :json)
