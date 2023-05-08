class CreateSelectedSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :selected_songs do |t|
      t.integer :user_id
      t.integer :song_id
      t.string :status
      t.integer :set_list_id

      t.timestamps
    end
  end
end
