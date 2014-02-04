class AppointmentsController < ApplicationController
	#before_filter :signed_in_client, only: [:create, :new, :edit, :update]

	def new
		@appointment = Appointment.new()
	end

	def create
		@appointment = Appointment.create(params[:appointment])
		redirect_to "/clients/new"
	end

	def show
		@appointment = Appointment.find(params[:id])
	end



end
