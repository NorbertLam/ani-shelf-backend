class User < ApplicationRecord
    has_secure_password
    
    validates :email, uniqueness: true

    has_many :favorites
    has_many :animes, through: :favorites
end
