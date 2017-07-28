class Share < ApplicationRecord
    validates :nickname, presence: true
    validates :content, presence:true
    validates :location, presence:true
    validates :image_content_type, presence:true
end
