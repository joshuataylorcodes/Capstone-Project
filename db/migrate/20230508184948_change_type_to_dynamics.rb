class ChangeTypeToDynamics < ActiveRecord::Migration[7.0]
  def change
    rename_column :songs, :type, :dynamics
  end
end
