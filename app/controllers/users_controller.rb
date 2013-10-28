

# CONTROLLER FOR NEW



class UsersController < ApplicationController
	# def index
	# 	@users = User.all


	# 	@hello = "Greetings!"
	# 	#nothing here!
	# end

	def new
		@user = User.new
	end


	# def show
	# 	# parems[:id]
	# 	@tvtitle =Tvtitle.find(params[:id])
	# 	# @times = location.times             this is a sample for multiple variables
		
	# end



	def create

		# this is coming from the post (button)

		@user = User.create(params[:user].permit(:email, :password, :password_confirmation))
		# redirect_to :action => "new"
		# redirect_to :action => "tvtitles#new"
		redirect_to triggers_url
		# redirect_to tvtitles_url
		# redirect_to :action => "new", :id =>@user._id
		# redirect_to users_url

	end

	# def destroy
	# 	Tvtitle.find(params[:id]).destroy
	# 	redirect_to tvtitles_url
	# end	


end