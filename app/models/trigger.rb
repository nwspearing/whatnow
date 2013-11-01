class Trigger
	include Mongoid::Document
	# include Mongoid::Document::Attributes::Dynamic

	# field :timepref, type: Integer
	# field :timepref, type: Time
	field :timepref, type: String
	field :urlpref, type: String
	
	# field :tripped, type: Boolean

	belongs_to :user
	# embedded_in :user, :inverse_of => :triggers
	# embedded_in :user

# def time_check
# TIME1 = Time.new


# @tvtitles.each do |tvtit| 

#   if tvtit.name == TIME1
#   	@VARIABLE_THAT_GOES_TO_JS = tvtit.t_episode

# 	end
# end





# def time_check
# 	time = Time.new 
# 	puts time.hour
# 	puts time.min

# end

# def time_comparison(trig, tm)

# LOOP ALL CURRENT USER PREFERENCES

# if triggerTriggered == FALSE
# current_user.triggers.timepref = currentTIME
#    CHANGEURL
#    triggerTriggered = TRUE

# OUTPUT CURRENT_URL INDEX NUMBER
# current_user.triggers[3].urlpref

# end


end
