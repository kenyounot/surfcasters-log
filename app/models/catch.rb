class Catch < ApplicationRecord
  belongs_to :log
  has_many :users, through: :logs
end
