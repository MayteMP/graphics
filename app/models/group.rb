class Group < ApplicationRecord
  belongs_to :teacher
  belongs_to :matter
end
