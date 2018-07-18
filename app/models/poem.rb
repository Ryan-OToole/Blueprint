class Poem < ApplicationRecord
  has_many :poem_lists
  has_many :users, through: :poem_lists

end
