// how to define a tuple
var movieDetails = (duration:"2 Hours", title:"Sanju", director:"Hirani")

// way to access a tuple
print(movieDetails)

print(type(of: movieDetails))


print("The movie is directed by \(movieDetails.director)")

// we can access tuple even using the index
print("The movie \(movieDetails.1) with duration of \(movieDetails.0) is directed by \(movieDetails.2)")


func movieData (movieName:String) -> (String,String,String)
{
    return movieDetails
}

print(movieData(movieName: "Sanju"))


movieDetails.director = "Raju Hirani"

print(movieData(movieName: "Sanju"))

let newAirportDetails = ["IXE":"Mangalore", "BLR": "Bangalore", "HBX":"Hubali"]

// This tuple way of doing things 
for (airportCode, airportName) in newAirportDetails
{
    print("Airport code \(airportCode) and Airport Name is: \(airportName)")
}
