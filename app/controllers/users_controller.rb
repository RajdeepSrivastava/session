class UsersController < ApplicationController

    def index
      @users = User.all
    end
  
    def new
      @users = User.new
    end
  
  
  
    # def logincheck
    #   user = User.find_by(email: params[:email])
    #   if user && user.authenticate(params[:password]) 
    #   redirect_to "/about", notice: "Account is ceated Successfully"
    #   else
    #     redirect_to "/"
    #   end
    # end
  
    def create
      @users = User.new(users_params)
      if @users.save
        redirect_to "/about", notice: "Succesfully created account"
      else
        render :new 
      end
    end
    


    # def reset_password
    #   user = User.find_by(email: params[:email])
    #   if user
    #     user.generate_password_reset_token
    #     redirect_to root_path
    #   else
    #     flash[:error] = "User with this email address not found."
    #     render :forgot_password
    #   end
    # end
  
    private
  
    def users_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
    
  end
  