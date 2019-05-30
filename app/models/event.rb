class Event < ApplicationRecord
   belongs_to :gym, optional: true
end
