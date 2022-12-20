class Api::SessionsController < ApplicationController
  def show
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

        if @user
            login(@user)
            render :json 
        else
            @user = User.new(
                username: params[:user][:username],
                password: params[:user][:password]
              )
            flash.now[:errors] = ['Invalid username or password']
            render :new
        end
  end

  def destroy
  end
end
