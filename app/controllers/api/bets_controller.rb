class Api::BetsController < ApplicationController

    def index
        @bets = Bet.all
        render json: @bets
    end

    def create
        @bet = Bet.new(bet_params)
        if @bet.save
            render json: @bet
        else
            render json: @bet.errors.full_messages
        end
    end

    private

    def bet_params
        params.require(:bet).permit(
            :name, :category, :start_date, :end_date, :wager_amount, :rules, :bet_maker_id, :bet_receiver_id
        )
    end

    
end
