class TriggersController < ApplicationController
	def index
		@triggers = Trigger.all
		@hello = "Greetings!"
		#nothing here!
	end

	def maindisplay
		@triggers = Trigger.all
	end


	def new
		@trigger = Trigger.new
	end


	def show
		# parems[:id]
		@trigger =Trigger.find(params[:id])
		# @times = location.times             this is a sample for multiple variables
		
	end


	def create

		# this is coming from the post (button)

		@trigger = Trigger.create(params[:trigger].permit(:timepref, :urlpref))
		# redirect_to tvtitles_url
		redirect_to :action => "show", :id =>@trigger._id

	end

	def destroy
		Trigger.find(params[:id]).destroy
		redirect_to triggers_url
	end	


end