class User < ApplicationRecord
  has_many :selected_songs
  has_many :set_lists, through: :selected_songs
end
