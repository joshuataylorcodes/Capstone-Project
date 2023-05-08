class CreateSetLists < ActiveRecord::Migration[7.0]
  def change
    create_table :set_lists do |t|
      t.integer :user_id
      t.integer :total_time

      t.timestamps
    end
  end
end
