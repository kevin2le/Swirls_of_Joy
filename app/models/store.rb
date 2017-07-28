class Store < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :contact_info, presence:true
    validates :location, presence:true
    has_many :comments
    has_many :ratings
    helper_method :average_rating
    def average_rating
        ratings = self.ratings
        sum = 0
        ratings.each do |rating|
          sum += rating.rating
        end
        if ratings.count == 0
          0
        else        
          sum.to_f / ratings.count
        end
     end

end
