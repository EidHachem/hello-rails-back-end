module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        count = Greeting.count
        random_offset = rand(count)
        greeting = Greeting.offset(random_offset).first

        render json: greeting
      end
    end
  end
end
