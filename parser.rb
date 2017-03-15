require 'pry'
require 'google_places'
require 'json'
# already have arrays and shit
# regex = Regexp.new(/\d+ \w+ \w+{3,}/)

# string = ""


# string += "10 W Michigan Ave 1005 E Michigan Ave 1015 E Michigan Ave 103 W Michigan Ave 106 West Michigan - Ten 109 W Michigan Ave 112 W Michigan Ave 113 West Michigan Ave 12 W Michigan Ave 122 W Michigan Ave 130 W Michigan Ave 18 W Michigan 200 W Michigan 201 W Michigan Ave 206 East Michigan 207 W Michigan Ave 208 W Michigan Ave 210 W Michigan Ave 214 W Michigan Ave 215 W Michigan Ave 216 W Michigan Ave 217 W Michigan Ave 228 W Michigan Ave 229 West Michigan Aven 301 Michigan Ave 402 W Michigan Ave 108 Pearl St 124 Pearl St 10 N Washington 10 N Washington 20 N Washington St 26 North Washington 9 S Washington 15 S Washington 102 North Hamilton Street
# 533 W Cross
# 310 W Cross
# 317 W Cross
# 505 W Cross
# 517 W Cross
# 701 W Cross
# 705 W Cross
# 707 West Cross St ".strip


# string += "735 W Cross St  13 E Cross St  18 E Cross  22 E Cross  24 E Cross St  25 E Cross St  25 E Cross St  29 E Cross  32 E Cross  33 E Cross St  36 E Cross St  39 East Cross  42 E Cross St  50 E Cross  56 E Cross St  720 Norris St  30 N River  307 N River St  312 N River  802 North River Street a River St  310 Perrin St  12 S Huron  31 South Huron Street  22 North Huron  36 N Huron St  40 N Huron St  40 North Huron  42 N Huron St  815 N Huron

# 1305 Washtenaw 1733 Washenaw Ave 1789 Washtenaw 2333 Washtenaw 2649 Washtenaw 2660 W Washtenaw 2896 Washtenaw Ave 4860 Washtenaw 3773 Carpenter Rd

# 870 Ecorse Road
# 93 Ecorse Road
# 979 Ecorse Rd
# ".strip


# string += "2122 Whittaker Rd  2128 Whittaker  5577 Whittaker Road 5577 Whittaker Rd
# 5565 Merritt Road
# T591 Armstrong
# ".strip
# string.scan(regex)



locations = ["10 W Michigan",
						 "1005 E Michigan",
						 "1015 E Michigan",
						 "103 W Michigan",
						 "106 West Michigan",
						 "109 W Michigan",
						 "112 W Michigan",
						 "113 West Michigan",
						 "12 W Michigan",
						 "122 W Michigan",
						 "130 W Michigan",
						 "18 W Michigan",
						 "200 W Michigan",
						 "201 W Michigan",
						 "206 East Michigan",
						 "207 W Michigan",
						 "208 W Michigan",
						 "210 W Michigan",
						 "214 W Michigan",
						 "215 W Michigan",
						 "216 W Michigan",
						 "217 W Michigan",
						 "228 W Michigan",
						 "229 West Michigan",
						 "301 Michigan Ave",
						 "402 W Michigan",
						 "10 N Washington",
						 "10 N Washington",
						 "20 N Washington",
						 "26 North Washington",
						 "9 S Washington",
						 "15 S Washington",
						 "102 North Hamilton",
						 "533 W Cross",
						 "310 W Cross",
						 "317 W Cross",
						 "505 W Cross",
						 "517 W Cross",
						 "701 W Cross",
						 "705 W Cross",
						 "707 West Cross",
						 "735 W Cross",
						 "13 E Cross",
						 "18 E Cross",
						 "22 E Cross",
						 "24 E Cross",
						 "25 E Cross",
						 "25 E Cross",
						 "29 E Cross",
						 "32 E Cross",
						 "33 E Cross",
						 "36 E Cross",
						 "39 East Cross",
						 "42 E Cross",
						 "50 E Cross",
						 "56 E Cross",
						 "30 N River",
						 "307 N River",
						 "312 N River",
						 "802 North River",
						 "12 S Huron",
						 "31 South Huron",
						 "22 North Huron",
						 "36 N Huron",
						 "40 N Huron",
						 "40 North Huron",
						 "42 N Huron",
						 "815 N Huron",
						 "1305 Washtenaw 1733",
						 "1789 Washtenaw 2333",
						 "2649 Washtenaw 2660",
						 "2896 Washtenaw Ave",
						 "4860 Washtenaw 3773",
						 "870 Ecorse Road",
						 "93 Ecorse Road",
						 "979 Ecorse Rd2122",
						 "5577 Whittaker Road",
						 "5565 Merritt Road"]


class GRequest

	def initialize(request)
		url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{request}&sensor=false"
		@uri = URI(url)
	end

	def get
		return Net::HTTP.get(@uri)
	end

end




# i = 0
# loc_ary = []
# locations.each do |location|
# 	loc = location + " Ann Arbor, MI"
# 	url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{loc}&sensor=false"
# 	response = Net::HTTP.get(URI(url))

# end

# loc_ary.each do |hsh|

# end

binding.pry



