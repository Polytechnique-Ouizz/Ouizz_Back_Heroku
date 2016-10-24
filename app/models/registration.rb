class Registration < ApplicationRecord
  belongs_to :ouizzuser
  belongs_to :event
end
