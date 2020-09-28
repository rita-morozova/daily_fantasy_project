class User < ApplicationRecord
    has_many :teams
    has_many :contests, through: :teams
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    has_secure_password

    def overall_position
        #add functionality later
        1
    end

    def contest_position
        #add functionality later
        1
    end
end
