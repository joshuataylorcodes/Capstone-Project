class SetList < ApplicationRecord
  belongs_to :user
  has_many :selected_songs
  has_many :songs
end
