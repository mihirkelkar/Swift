

var airports: Dictionary<String, String> = ["SLC" : "Salt Lake City",
    "JFK" : "New York City", "SJC" : "San Jose City", "BWI" : "Baltimore City", "LAS": "Las Vegas"]
//Counting the total number of elements in the dictionary
println("The total number of Airports on record are \(airports.count)")

airports["JFK"]
airports.updateValue("John F Kennedy International NYC", forKey: "JFK")

var code_airport = airports["LAS"]
println("The airport city for airport code LAS is \(code_airport)")


//Iterating over items in a dictionary
for (airportCode, airportName) in airports{
    println("\(airportCode) : \(airportName)")
}

//Iterating over keys in the dictionary
for airportCode in airports.keys{
    println("Airport code: \(airportCode)")
}

//Iterating over values in the dictionary
for airportName in airports.values{
    println("Airport name is \(airportName)")
}

//Convert dictionary keys into Array
var airportCodeArray = Array(airports.keys)

//Convert dictionary values into Array
var airportNameList = Array(airports.values)

//Creating an empty dictionary

var newairports = Dictionary<String, String>()

newairports["STL"] = "St. Louis International"

