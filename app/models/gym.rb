class Gym < ApplicationRecord
    has_many :events
    include SearchableByName
end
