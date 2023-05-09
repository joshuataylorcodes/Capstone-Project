class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :selected_songs
  has_many :set_lists, through: :selected_songs
end
