class OffersController < ActionController::Base
	respond_to :json

	def create
		#JSON.parse(string)	
	end

	def index
		@offers = Offer.all
    json_offers = { :data => { :offers => @offers }}
		respond_with(json_offers)
	end

	def show
		@offer = Offer.find(params[:id])
    json_offer = { :data => { :offer => @offer }}
		respond_with(json_offer)
	end

	def offers_received
    @offers = Offer.where(:receiver_id => params[:user_id])
    
    @offers.each do |o|
      offer_disk = Disk.find(o.disk_id)
      o[:disk_title] = offer_disk.title
      o[:disk_artist] = offer_disk.artist
    end

    json_offers = { :data => { :offers => @offers }}
    respond_with(@offers)
	end

  def offers_sent
    @offers = Offer.where(:sender_id => params[:user_id])
    
    @offers.each do |o|
      offer_disk = Disk.find(o.disk_id)
      o[:disk_title] = offer_disk.title
      o[:disk_artist] = offer_disk.artist
    end

    json_offers = { :data => { :offers => @offers }}
    respond_with(@offers)
  end

end