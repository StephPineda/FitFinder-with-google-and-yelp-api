class Gym < ApplicationRecord
    has_many :events, dependent: :delete_all
    include SearchableByName
end
