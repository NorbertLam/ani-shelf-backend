class User < ApplicationRecord
    has_many :favorites
    has_many :anime, through: :favorites
end
