var map = require('./map.js')
var fs = require('fs')
var GooglePlaces = require('./places.js')
var http = require('http');
var request = require('sync-request')
var jsonfile = require('jsonfile')

var json_file = './places.json'

var in_file = json_file

var out_file = './places_final.json'


function extractJsonInfo() {
  var inJson;
  var final_obj


  jsonfile.readFileSync(in_file, function(err, obj) {
    var obj_array = obj.final
    var location_obj = {}

    for (var i = 0; i < obj_array.length; i++) {
      var obj = obj_array[i];
      var location = obj.results[0].geometry.location
      location_obj.location = location
    }

    final_obj = location_obj
  })
  return final_obj
}


function extractInfo() {
  var inJson
  var location_obj = {}
  location_obj.locations = []

  var data = jsonfile.readFileSync(in_file)

  obj_array = data.final

  for (var i = 0; i < obj_array.length; i++) {
    var obj = obj_array[i];
    var location = obj.results[0].geometry.location
    location_obj.locations.push(location)
  }

  return location_obj
}


function writeExtractedInfo(){
	info = extractInfo();
	jsonfile.writeFileSync(out_file, info);
	console.log("sex")
}

writeExtractedInfo();

// function getGmaps(query, callback) {
//   return http.get('http://maps.googleapis.com/maps/api/geocode/json?address=' + query + '&sensor=false', function(response) {
//     var body = '';
//     response.on('data', function(d) {
//       body += d
//     })

//     response.on('end', function() {
//     	callback(body)
//     })
//   })
// }

function getGmaps(loc, callback) {
  loc += " ann arbor, michigan"
  var query = 'http://maps.googleapis.com/maps/api/geocode/json?address=' + loc + '&sensor=false';
  var res = request('GET', query)
  var body = res.body.toString()
  var json = JSON.parse(body)
  callback(json)
}


// (function() {
//   obj = {};
//   obj.final = []
//   map.locations.forEach(function(location) {
//     getGmaps(location, function(json) {
//     	console.log("getting info for " + location);
//       obj.final.push(json)
//     })
//   })
//   jsonfile.writeFileSync(json_file, obj)
// })()




// function getAddresses() {
//   var finalJson = {};
//   finalJson.results = [];

//   for (var i = 0; i < map.locations; i++) {
//     var locations = map.locations;
//     var query = locations[i]
//     console.log("getting location for " + query)
//     getGmaps(query, function(json){
//     	finalJson.results.push(json)
//     })
//   }

//   return finalJson

// }

// var jsawn = getAddresses()




// var locations = map.locations

// for(i = 0; i < locations.length; i++) {
// 	loc = locations[i]
// 	loc += "Ann Arbor, MI"
// 	getGmaps(loc, function(body){
// 		finalLocations.push(body)
// 	})
// }





// for(var i = 0; i < map.locations.length; i++) {
// 	var locations = map.locations;
// 	var location = locations[i];
// 	location += " Ann Arbor, MI";
// 	places.search({keyword: location}, function(err, response){
// 		console.log(response.results)
// 	})
// }
