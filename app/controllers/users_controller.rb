class UsersController < ActionController::Base
	respond_to :json

  def create
    @user = User.new(username: params[:username], mail: params[:mail])
    if @user.save
      render json: { :data => { :username => params[:username], :mail => params[:mail] } }
    else
      render json: { :data => { :error => "ERROR" }}
    end
  end

	def show
		@user = User.find(params[:id])
		json_user = { :data => { :user => @user }}
		respond_with(json_user)
	end

end
