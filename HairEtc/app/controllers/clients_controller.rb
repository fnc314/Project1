class ClientsController < ApplicationController

	def index

	end

	def new
		@client = Client.new()
	end

	def create
		@client = Client.create(client_params)
		if @client
			redirect_to client_path(@client.id)
			flash[:success] = "Welcome to Hair Etc..."
		else
			redirect_to '/signup'
			flash[:error] = "Sorry, please try again"
		end
	end

	def show
		@client = Client.find(params[:id])
	end

	private

	def client_params
		new_client = params.require(:client).permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation)
	end

end
