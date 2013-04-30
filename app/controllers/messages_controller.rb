class MessagesController < ActionController::Base
	respond_to :json

	def create
		@message = Message.new(content: params[:content], disk_id: params[:disk_id])
    #@message = Message.new(params[:message])
    if @message.save
      json_msg = {:data => { :status => "OK", :msg => "Message received"}}
    else
      json_msg = {:data => { :status => "ERROR", :msg => "Error sending message.."}}
    end

    respond_with(json_msg)
		#JSON.parse(string)	
	end
	def index
		@messages = Message.all
		json_msgs = { :data => { :messages => @messages }}
		respond_with(json_msgs)	
	end

	def show
		#@disk = Disk.find(params[:id])
		#json_disk = { :data => { :disk => @disk }}
		#respond_with(json_disk)
	end

	def show_messages_by_user
    #Message.where("user_id = 1 AND disk_id = 2")
    @messages = Message.where(:user_id => params[:user_id])
    json_msgs ={ :data => { :messages => @messages }}
    respond_with(json_msgs)
	end


end