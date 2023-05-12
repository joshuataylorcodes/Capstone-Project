json.id set_list.id
json.user do
  json.id set_list.user.id
  json.name set_list.user.name
  json.email set_list.user.email
  json.admin set_list.user.admin
end
json.setlist do
  json.array! @selected_songs do |song|
    if song.set_list_id == set_list.id
      json.status song.status
      json.songs song.song
      json.set_list_id song.set_list_id
    end
  end
end
json.total_time set_list.total_time
json.created_at set_list.created_at
json.updated_at set_list.updated_at
