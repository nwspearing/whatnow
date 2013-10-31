class TriggersController < ApplicationController

	# @user = current_user

	def index
		# @User.triggers = User.trigger.all
		# @triggers= Trigger.all
		@triggers = current_user.triggers
#		@hello = "Greetings!"
		# @af_avg = Score.where(:test_name => "AFQT").avg(:test_score)
	end

	def maindisplay
		@triggers = current_user.triggers
		# current_user.triggers = Trigger.all
		# @User.triggers = User.trigger.all
		# @triggers = Trigger.all
	end


	def new
		@user = User.find(params[:user_id])
		@trigger = @user.triggers.new
	end


	def show
		@trigger =Trigger.find(params[:id])

		# @times = location.times             this is a sample for multiple variables
		
	end


	def create

		# this is coming from the post (button)

		# @user = session[:user_id]

		@user = User.find(params[:user_id])
		@trigger = @user.triggers.create(params[:trigger].permit(:timepref, :urlpref))

		# @User.trigger = Trigger.create(params[:trigger].permit(:timepref, :urlpref))
		# redirect_to tvtitles_url
		# redirect_to :action => "show", :id =>@trigger._id

		# redirect_to @user
		redirect_to user_triggers_url

	end


# def edit
# end

# def update
# 	end

	def edit
		@user = User.find(params[:user_id])
		@trigger = @user.triggers.find(params[:id])
	end

	def update
		@user = User.find(params[:user_id])
		@trigger = @user.triggers.find(params[:id])
		@trigger.update(submit_params)

		redirect_to user_triggers_url
	end




	def destroy
		Trigger.find(params[:id]).destroy
		# redirect_to triggers_url
		redirect_to user_triggers_url
	end	


	private

	def submit_params
		params[:trigger]
		.permit(:typepref, :urlpref)
	end



end