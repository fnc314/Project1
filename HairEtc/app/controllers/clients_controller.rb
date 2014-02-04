class ClientsController < ApplicationController

	def new
		@client = Client.new()
	end

	def create
		@client = Client.create(params[:client])
		if @client.save
			flash[:success] = "Welcome to Hair Etc..."
			redirect_to @client
		else
			render 'new'
		end
	end

	def show
		@client = Client.find(params[:id])
	end

end
