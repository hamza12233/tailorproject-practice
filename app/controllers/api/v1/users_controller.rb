class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
 

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json:{ :errors => @user.errors.full_messages }
        end
    end

    def update

    end

private
    def user_params
        params.require(:user).permit(:first_name,:last_name,:email,:password)
    end
end
