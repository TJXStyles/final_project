class UsersController < ApplicationController

	before_filter :find_user, :only => [:edit, :update, :destroy]

  def index
  	User.all
  end

  def new
  	@user = User.new
  end

	def create
  	@user = User.new(user_params)
		if @user.save
			redirect_to root_url, :notice => "Successfully signed up!"
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end

end
