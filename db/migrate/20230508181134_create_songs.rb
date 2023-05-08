class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.integer :year
      t.string :genre
      t.integer :tempo
      t.string :type
      t.integer :song_length
      t.string :video_url
      t.string :sheet_music_url

      t.timestamps
    end
  end
end
