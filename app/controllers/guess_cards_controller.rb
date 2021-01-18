class GuessCardsController < ApplicationController
    def index
        @guess_cards = GuessCard.all
        render json: @guess_cards
    end

    def create
        @new_guess_card = GuessCard.new(
            name: params[:name],
            email: params[:email],
            breed_one: params[:breed_one],
            breed_two: params[:breed_two],
            breed_three: params[:breed_three],
            breed_four: params[:breed_four],
            breed_five: params[:breed_five]
        ) 
        if @new_guess_card.save
            render json: @new_guess_card
        else
            render json: @new_guess_card.errors.messages
        end
    end
end
