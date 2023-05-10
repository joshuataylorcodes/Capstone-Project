class SelectedSong < ApplicationRecord
  belongs_to :user
  belongs_to :song
  belongs_to :set_list, optional: true
end
