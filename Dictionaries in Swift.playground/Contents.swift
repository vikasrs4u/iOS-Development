
var airportDetails = ["IXE":"Mangalore", "BLR": "Bangalore", "SFO":"Sanfransico"]



print(type(of: airportDetails["IXE"]))

print("My flight will land in \(airportDetails["IXE"]!)")

// if we are not sure about existance of value then we can use optional binding

if let airportName = airportDetails["SFO"]
{
    print("My flight will land in \(airportName)")
}


// Other way of declaring dictionaries with annotation

var indianAirportDetails = [String:String]()

var northIndianAirports:[String:String]

// Latter assigning the values

northIndianAirports = ["IXC":"Chandigarh", "IXR": "Ranchi", "DEL":"Delhi"]

indianAirportDetails = ["IXE":"Mangalore", "BLR": "Bangalore", "DEL":"Delhi"]

print("My flight will land in \(indianAirportDetails["BLR"]!)")


// we can add or change details in dictionary

// if data is already present for a key then value get modified
indianAirportDetails["IXE"] = "Mangalore International Airport"

// if key itself is not present, then it adds that element
indianAirportDetails["BOM"] = "Mumbai Airport"

print("My flight will land in \(indianAirportDetails["IXE"]!)")

print("My flight will land in \(indianAirportDetails["BOM"]!)")

// to delete the record

indianAirportDetails["BOM"] = nil

print("IndianAirportDetails Dictionary has \(indianAirportDetails.count) elements")

// another syntax to reset the dictionary

indianAirportDetails = [:]


print("IndianAirportDetails Dictionary has \(indianAirportDetails.count) elements")

print(indianAirportDetails.isEmpty)

let newAirportDetails = ["IXE":"Mangalore", "BLR": "Bangalore", "HBX":"Hubali"]

//newAirportDetails["HBX"] = "Hubali New Airport" // This line gives error as dictionary is immutable
print("My flight will land in \(newAirportDetails["HBX"]!)")


// to iterate over the all the airport

// This tuple way of doing things

for (airportCode, airportName) in newAirportDetails
{
    print("Airport code \(airportCode) and Airport Name is: \(airportName)")
}

// Accessing the key value data
for airport in newAirportDetails
{
    print("Airport code \(airport.key) and Airport Name is: \(airport.value)")
}

// 0 will always be key and 1 will be value
for airport in newAirportDetails
{
    print("Airport code \(airport.0) and Airport Name is: \(airport.1)")
}


// if we need only values or only keys then

for airport in newAirportDetails.keys
{
    print("Airport code \(airport)")
}

for airport in newAirportDetails.values
{
    print("Airport Name \(airport)")
}
