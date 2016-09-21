class Entry < ApplicationRecord
  belongs_to :user
  has_one :exercise
  has_one :meal
end
