class Gym < ApplicationRecord
    has_many :events, dependent: :delete_all
    include SearchableByName

    scope :by_zipcode, -> ( zipcode ){ where('address iLIKE ?', "%#{zipcode}%") }
    scope :by_name, -> ( term ) { where("name ilike ?", "%#{term}%") }
end
