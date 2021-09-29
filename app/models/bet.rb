class Bet < ApplicationRecord
    belongs_to :bet_maker, foreign_key: :bet_maker_id, class_name: "User"
    belongs_to :bet_receiver, foreign_key: :challenger_id, class_name: "User"
end
