class BetChannel < ApplicationCable::Channel
  def subscribed
    puts 'subscribing to bet channel'
    stop_all_streams
    Bet.where(bet_maker: current_user).or(Bet.where(bet_receiver: current_user)).find_each do |bet|
        stream_from "bet_#{bet.id}"
    end
  end

  def unsubscribed
    stop_all_streams
  end
end
