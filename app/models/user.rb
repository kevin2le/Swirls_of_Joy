class User < ApplicationRecord
    has_secure_password
    # Verify that an email exists and that it does not already exist in the db
    validates :email, presence: true, uniqueness: true
    validates :name, presence: true
    has_many :comments
    has_many :ratings
    
end
