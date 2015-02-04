class DeedsController < ApplicationController

	def index
		@deeds = Deed.all
	end

	def new
		@deed = Deed.new
	end

	def create
		@deed = Deed.new(params.require(:deed).permit(:deed, :from_id, :to_id))
	
		if @deed.save
			redirect_to users_path

		else
			render :new
		end
	end


	def show
		@deed = Deed.find(params[:id])
	end

end
