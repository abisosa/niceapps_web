class DisksController < ActionController::Base
	respond_to :json

	def create
		#@disk = Disk.new
		#JSON.parse(string)	
	end
	def index
		#@disks = Disk.where(:user_id => params[:id])
		@disks = Disk.all
		json_disks = { :data => { :disks => @disks }}
		respond_with(json_disks)	
	end

	def show
		@disk = Disk.find(params[:id])
		json_disk = { :data => { :disk => @disk }}
		respond_with(json_disk)
	end

end