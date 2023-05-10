class SetList < ApplicationRecord
  belongs_to :user
  has_many :selected_songs
  has_many :songs, through: :selected_songs
end
