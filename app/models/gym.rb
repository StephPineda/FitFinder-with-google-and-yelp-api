class Gym < ApplicationRecord
    has_many :events, dependent: :delete_all
    include SearchableByName

    scope :by_zipcode, -> ( zipcode ){ where('address iLIKE ?', "%#{zipcode}%") }
    scope :by_name, -> ( term ) { where("name ilike ?", "%#{term}%") }

     IMGS = ["yoga.jpg","yoga-1.jpg", "yoga-2.jpg","yoga-3.jpg", "yoga-4.jpg","yoga-5.jpg","yoga-6.jpg"]
end
