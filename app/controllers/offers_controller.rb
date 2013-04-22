class OffersController < ActionController::Base
	respond_to :json

	def create
		#JSON.parse(string)	
	end

	def index
		@offers = Offer.all
		respond_with(@offers)
	end

	def show
		@offer = Offer.find(params[:id])
		respond_with(@offer)
	end


end