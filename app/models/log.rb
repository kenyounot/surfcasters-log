class Log < ApplicationRecord
  belongs_to :user
  has_many :catches
end
