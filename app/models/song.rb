class Song < ApplicationRecord
  has_many :set_lists
  has_many :selected_songs
end
