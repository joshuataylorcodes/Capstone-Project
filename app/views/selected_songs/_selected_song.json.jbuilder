json.extract! selected_song, :id, :user_id, :song_id, :status, :set_list_id, :created_at, :updated_at
json.url selected_song_url(selected_song, format: :json)
