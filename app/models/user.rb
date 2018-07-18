class User < ApplicationRecord
  has_many :poem_lists
  has_many :poems, through: :poem_lists

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

end
