class AppointmentsController < ApplicationController
	before_filter :signed_in_client, only: [:new, :create, :show]

	def new
		@appointment = Appointment.new()
	end

	def create

		if params[:appointment][:time] == "" || params[:appointment][:date] == ""
			flash.now[:warning] = "Please Fill Out Entire Form"
			redirect_to new_appointment_path
		else
			appointment = Appointment.create(date: params[:appointment][:date], time: params[:appointment][:time])
			params[:appointment][:stylist].each {|x| appointment.stylist = Stylist.find(x) if x != "" }
			params[:appointment][:services].each {|x| appointment.services.push(Service.find(x)) if x != "" }
			redirect_to appointment
		end

	end

	def show
		@appointment = Appointment.find(params[:id])
		@services = @appointment.services
		@stylist = @appointment.stylist
	end



end
