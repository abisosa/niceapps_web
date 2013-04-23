class UsersController < ActionController::Base
	respond_to :json

	def show
		@user = User.find(params[:id])
		json_user = { :data => { :user => @user }}
		respond_with(json_user)
	end
end