class MessagesController < ActionController::Base
	respond_to :json

	def create
		@message = Message.new(content: params[:content], username: params[:username], disk_id: params[:disk_id])
    if @message.save
      status = "OK"
      msg = "Message Received"
    else
      status = "ERROR"
      msg = "Error sending message.. "
    end

    render json: { :data => { :status => status, :msg => msg}}
		#JSON.parse(string)	
	end

	def index
		@messages = Message.order("updated_at DESC")
		json_msgs = { :data => { :messages => @messages }}
		respond_with(json_msgs)	
	end

	def show
		#@disk = Disk.find(params[:id])
		#json_disk = { :data => { :disk => @disk }}
		#respond_with(json_disk)
	end

	def show_messages_by_user
    @messages = Message.where(:username => params[:username])
    json_msgs = { :data => { :messages => @messages }}
    respond_with(json_msgs)
	end


end
