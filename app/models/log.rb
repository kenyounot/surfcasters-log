class Log < ApplicationRecord
  has_many :catches
  has_one :user
end
