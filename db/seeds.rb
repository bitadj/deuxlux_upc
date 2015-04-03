# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Season.all.destroy
Style.all.destroy
Upcode.all.destroy


season = Season.create([
	{
		name: 'Spring'
	},
	{
		name: 'Summer'
	},
	{
		name: 'Fall'
	},
	{
		name: 'Winter'
	}
])



(0..5).each do |i|
	Upcode.create(upc: rand.to_s[2..13])
end


styles = Style.create ([
	{
	    styleno: 'DL1109-60',
	    year: 2011,
	    season: Season.find_by(name: 'Spring')
	},
	{
	    styleno: 'DL1109-62',
	    year: 2011,
	    season: Season.find_by(name: 'Fall')
	},
	{
	    styleno: 'DL1109-65',
	    year: 2011,
	    season: Season.find_by(name: 'Summer')
	},
	{
	    styleno: 'DL1109-67',
	    year: 2011,
	    season: Season.find_by(name: 'Winter')
	}
])




