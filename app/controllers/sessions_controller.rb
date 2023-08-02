class SessionsController < ApplicationController

    def login
        @users = User.find_by(users_params)

        if @users
            session[:user_id] = user_id 
            redirect_to "/about", notice: "Successfully logged in"
        else
            render root_path
        end
    end

    def users_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end

end
