class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :pets, :through => :favorites
    validates :username, presence: true, length: {minimum: 6}
end
