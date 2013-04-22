class DisksController < ActionController::Base
	respond_to :json

	def create
		#@disk = Disk.new
		#JSON.parse(string)	
	end
	def index
		#@disks = Disk.where(:user_id => params[:id])
		@disks = Disk.all
		respond_with(@disks)
	end

	def show
		@disk = Disk.find(params[:id])
		respond_with(@disk)
	end

end