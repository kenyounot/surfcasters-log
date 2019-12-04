class Catch < ApplicationRecord
  belongs_to :log
  belongs_to :user

  accepts_nested_attributes_for :log
end
