class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new

  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to users_path, success: 'Created successfully'
  	else
  		render :new
  	end
  end

  private

  def user_params
  	params.require(:users).permit(:name, :avatar)
  end
end
