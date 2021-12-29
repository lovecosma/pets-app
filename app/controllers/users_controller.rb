class UsersController < ApplicationController



    def create 
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: user, status: :ok
        else
            render json: {errors: user.errors.full_messages}
        end

    end





    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
