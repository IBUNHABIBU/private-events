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

ActiveRecord::Schema.define(version: 20_200_228_102_548) do
  create_table 'event_attendees', force: :cascade do |t|
    t.integer 'user_id'
    t.integer 'event_id'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['event_id'], name: 'index_event_attendees_on_event_id'
    t.index ['user_id'], name: 'index_event_attendees_on_user_id'
  end

  create_table 'events', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.string 'location'
    t.datetime 'date'
    t.integer 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_events_on_user_id'
  end

  create_table 'invitations', force: :cascade do |t|
    t.string 'email'
    t.integer 'event_creator'
    t.integer 'event_id'
    t.integer 'invited_user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['event_id'], name: 'index_invitations_on_event_id'
    t.index ['invited_user_id'], name: 'index_invitations_on_invited_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'remember_digest'
  end
end
