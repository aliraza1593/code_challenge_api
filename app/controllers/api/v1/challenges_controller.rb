# frozen_string_literal: true

# chellane controller
module Api
  module V1
    class ChallengesController < ApplicationController
      before_action :authenticate_user!
      before_action :set_challenge, only: %i[show update destroy]
      before_action :authorize_admin, only: %i[create update destroy]

      def index
        @challenges = Challenge.all
        render json: @challenges
      end

      def create
        # challenge = Challenge.new(challenge_params.merge(user_id: current_user.id))
        challenge = current_user.challenges.build(challenge_params)
        if challenge.save
          render json: { message: 'Challenge Added', data: challenge }
        else
          render json: { message: 'Failed to Add Challenge', data: challenge.errors }
        end
      end

      def show
        if challenge
          render json: { message: 'Challenge found', data: challenge }
        else
          render json: { message: 'Challenge Not Found', data: challenge.errors }
        end
      end

      def update
        if challenge.update(challenge_params)
          render json: { message: 'Challenge Updated', data: challenge }
        else
          render json: { message: 'Failed to Update Challenge', data: challenge.errors }
        end
      end

      def destroy
        if challenge.destroy
          render json: { message: 'Challenge destroyed', data: challenge }
        else
          render json: { message: 'Failed to destroy Challenge', data: challenge.errors }
        end
      end

      private

      def authorize_admin
        return if ENV['ADMIN_EMAIL'].include?(current_user.email)

        render json: { message: 'You are not authorized to perform this action' }, status: 403
      end

      def set_challenge
        challenge = Challenge.find_by(id: paams[:challenge_id])
      end

      def challenge_params
        params.require(:challenge).permit(:title, :description, :start_date, :end_date)
      end
    end
  end
end
