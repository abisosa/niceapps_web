class MessagesController < ActionController::Base
	respond_to :json

	def create
		#@disk = Disk.new
		#JSON.parse(string)	
	end
	def index
		@messages = Message.all
		json_msgs = { :data => { :messages => @messages }}
		respond_with(json_msgs)	
	end

	def show
		@disk = Disk.find(params[:id])
		json_disk = { :data => { :disk => @disk }}
		respond_with(json_disk)
	end

	def show_messages_by_user
    #Message.where("user_id = 1 AND disk_id = 2")
    @messages = Message.where(:user_id => params[:user_id])
    json_msgs ={ :data => { :messages => @messages }}
    respond_with(json_msgs)
	end


end