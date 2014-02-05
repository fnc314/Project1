class ClientsController < ApplicationController

	def index

	end

	def new
		@client = Client.new()
	end

	def create
		new_client = params.require(:client).permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation)
		@client = Client.new(new_client)
		if @client.save
			flash[:success] = "Welcome to Hair Etc..."
			redirect_to client_path
		else
			redirect_to '/signup'
		end
	end

	def show
		@client = Client.find(params[:id])
	end

end
