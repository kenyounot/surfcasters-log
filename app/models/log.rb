class Log < ApplicationRecord
  has_many :catches
  has_many :users, through: :catches

  accepts_nested_attributes_for :catch
end
