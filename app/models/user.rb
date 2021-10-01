class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
        :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
    has_many :bets
    has_many :bet_notes, through: :bets
    has_many :notifications, foreign_key: :recipient_id

    searchkick text_middle: [:username, :email]
end