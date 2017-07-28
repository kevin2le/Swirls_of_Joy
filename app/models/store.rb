class Store < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :contact_info, presence:true
    validates :location, presence:true
    has_many :comments, dependent: :destroy 
    has_many :ratings, dependent: :destroy 


end
