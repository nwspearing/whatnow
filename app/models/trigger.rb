class Trigger
	include Mongoid::Document
	# include Mongoid::Document::Attributes::Dynamic

	# field :timepref, type: Integer
	field :timepref, type: String
	field :urlpref, type: String

	belongs_to :user


# def time_check
# TIME1 = Time.new


# @tvtitles.each do |tvtit| 

#   if tvtit.name == TIME1
#   	@VARIABLE_THAT_GOES_TO_JS = tvtit.t_episode

# 	end
# end


end