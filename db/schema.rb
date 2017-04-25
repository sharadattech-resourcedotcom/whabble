# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170424223155) do

  create_table "businesses", force: :cascade do |t|
    t.string "busname"
    t.string "busadd1"
    t.string "busadd2"
    t.string "buscity"
    t.string "busstate"
    t.string "buspostal"
    t.string "string"
    t.string "busphone"
    t.string "buswebsite"
    t.string "busemail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesssocials", force: :cascade do |t|
    t.string "busfb"
    t.string "bustwitter"
    t.string "busgp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "messagesubj"
    t.string "messagecontent"
    t.string "messagerecipients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "reservationname"
    t.integer "resqty"
    t.datetime "resdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "reviewtitle"
    t.integer "reviewscore"
    t.text "reviewtext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "ticketname"
    t.string "ticketperformer"
    t.datetime "ticketeventdate"
    t.string "ticketseatsec"
    t.string "ticketseatlevel"
    t.string "ticketseatrow"
    t.string "ticketseat"
    t.string "ticketprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venuelocations", force: :cascade do |t|
    t.string "venueadd1"
    t.string "venueadd2"
    t.string "venuecity"
    t.string "venuestate"
    t.string "venuepostal"
    t.string "venuecountry"
    t.string "venuelanguage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "venuename"
    t.string "venuedescription"
    t.string "venuetagline"
    t.string "venueurl"
    t.string "venuephone"
    t.string "venueemail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venuesocials", force: :cascade do |t|
    t.string "venuefb"
    t.string "venuetwitter"
    t.string "venuegp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weventaddresses", force: :cascade do |t|
    t.string "weventadd1"
    t.string "weventadd2"
    t.string "string"
    t.string "weventcity"
    t.string "weventstate"
    t.string "weventpostal"
    t.string "weventurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wevents", force: :cascade do |t|
    t.string "weventname"
    t.string "weventdesc"
    t.datetime "weventstart"
    t.datetime "weventstop"
    t.string "weventcat"
    t.string "weventtype"
    t.binary "weventrepeat"
    t.binary "weventprivate"
    t.binary "weventbusy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wuserbusinesses", force: :cascade do |t|
    t.string "Wuserco"
    t.string "wusercoadd1"
    t.string "wusercoadd2"
    t.string "wusercocity"
    t.string "wusercostate"
    t.string "wusercopostal"
    t.string "wusercophone"
    t.string "wusercoemail"
    t.string "wusercotitle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wusercontacts", force: :cascade do |t|
    t.string "wuseradd1"
    t.string "wuseradd2"
    t.string "wusercity"
    t.string "wuserstate"
    t.string "wuserpostal"
    t.string "wuserphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wuserprofiles", force: :cascade do |t|
    t.string "wusername"
    t.string "wuserfirst"
    t.string "wuserlast"
    t.string "wuseremail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wusersocials", force: :cascade do |t|
    t.string "wuserfb"
    t.string "wusertwitter"
    t.string "wusergp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
