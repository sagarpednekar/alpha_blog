class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show]
	before_action :require_own_user, only: [:edit, :update]
	def new
		@user = User.new
	end

	def index
		@users = User.paginate(page: params[:page], per_page: 3)
	end
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to the alpha blog #{@user.username}"
			redirect_to articles_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			flash[:success] = "Account updated Succesfully"
			redirect_to articles_path
		else
			render 'edit'
		end
	end

	def show
		@user_articles = @user.articles.paginate(page: params[:page], per_page: 3)

	end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

	def set_user
		@user = User.find(params[:id])
	end

	def require_own_user
		if current_user!= @user
			flash[:danger] = "Dont try to be Over-Smart"
			redirect_to root_path			
		end
	end
end