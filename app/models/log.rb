class Log < ApplicationRecord
  belongs_to :user
  belongs_to :catch

  accepts_nested_attributes_for :catch
end
