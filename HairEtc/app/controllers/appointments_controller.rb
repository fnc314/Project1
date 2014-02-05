class AppointmentsController < ApplicationController
	#before_filter :signed_in_client, only: [:create, :new, :edit, :update]

	def new
		@appointment = Appointment.new()
	end

	def create
		new_app = params.require(:appointment).permit(:date, :time)

		if params[:appointment][:time] == "" || params[:appointment][:date] == ""
			flash.now[:warning] = "Please Fill Out Entire Form"
			redirect_to new_appointment_path
		else
			appointment = Appointment.create(new_app)
			params[:appointment][:schedule][:stylist_id].each {|x| appointment.stylist.push(Stylist.find(x)) }
			params[:appointment][:appointment_services][:service_ids].each {|x| appointment.services << x}
			redirect_to appointment
		end

	end

	def show
		@appointment = Appointment.find(params[:id])
	end



end
