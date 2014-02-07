class AppointmentsController < ApplicationController

	include SessionsHelper
	
	before_filter :signed_in_client, only: [:new, :create, :show]

	def new
		@appointment = Appointment.new()
	end

	def create

		if params[:appointment][:time] == "" || params[:appointment][:date] == ""
			flash.now[:warning] = "Please Fill Out Entire Form"
			redirect_to new_appointment_path
		else
			@current_client = current_client
			@appointment = Appointment.create(date: params[:appointment][:date], time: params[:appointment][:time], client_id: current_client.id)
			# params[:appointment][:stylist].each { |x| @appointment.stylist = Stylist.find(x) if x != "" }
			@appointment.stylist = Stylist.find(params[:stylist])
			params[:appointment][:services].each { |x| @appointment.services.push(Service.find(x)) if x != "" }
			send_text_message
			redirect_to @appointment
		end

	end

	def show
		@appointment = Appointment.find(params[:id])
		@services = @appointment.services
		@stylist = @appointment.stylist
	end

	private

	def send_text_message
    number_to_send_to = @appointment.stylist.phone
 
    twilio_sid = ENV['TWILIO_SID'] 
    twilio_token = ENV['TWILIO_TOKEN']
    twilio_phone_number = ENV['TWILIO_PHONE']
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "#{current_client.first_name} #{current_client.last_name} wants to schedule an appointment on #{l(@appointment.date, format: :default)} at #{l(@appointment.time, format: :default)} for #{list_services}.  Phone: #{current_client.phone}."
    )
  end

  def list_services
  	services = ""
  	@appointment.services.each do |x|
  		services += "#{x.name} "
  	end
  	return services
  end

end
	