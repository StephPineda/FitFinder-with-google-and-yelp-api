class Event < ApplicationRecord
   belongs_to :gym
  include SearchableByName
end
