
ActiveRecord::Schema[7.0].define(version: 2023_05_09_172046) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "selected_songs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "song_id"
    t.string "status"
    t.integer "set_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.integer "year"
    t.string "genre"
    t.integer "tempo"
    t.string "dynamics"
    t.integer "song_length"
    t.string "video_url"
    t.string "sheet_music_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
