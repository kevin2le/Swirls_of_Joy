class Store < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :contact_info, presence:true
    validates :location, presence:true
    has_many :comments
    has_many :ratings

    def average_rating
        store.rating.average(:rating)
    end

end
