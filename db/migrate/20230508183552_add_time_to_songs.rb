class AddTimeToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :time, :string
  end
end
