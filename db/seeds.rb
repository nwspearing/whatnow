# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Trigger.destroy_all

# Tvtitle.create([

# 	{name: '', t_episode: ''}
# 	])


Trigger.create([
	{timepref: "05:00", urlpref: 'http://www.weather.com'},
	{timepref: "06:00", urlpref: 'http://www.traffic.com'},
	{timepref: "12:00", urlpref: 'http://www.foodspotting.com'},
	{timepref: "17:00", urlpref: 'http://www.traffic.com'}
	])


