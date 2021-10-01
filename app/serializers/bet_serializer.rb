class BetSerializer < ActiveModel::Serializer
    attributes :id, :category, :start_date, :end_date, :wager_amount
    
    
end
  