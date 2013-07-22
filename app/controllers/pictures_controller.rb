class PicturesController < ApplicationController

	def index
		@pictures = Picture.all 
	end

	def new
		@picture = Picture.new
	end

	def show
		@picture = Picture.find(params[:id])
	end

	def create
		
	end

	def edit
  @picture = Picture.find(params[:id])
end

def update
  @picture = Picture.find(params[:id])

  if @picture.update_attributes(params[:picture])
    redirect_to "/pictures/#{@picture.id}"
  else
    render :edit
  end
end

end