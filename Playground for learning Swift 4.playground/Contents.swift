var regularInt:Int

var optionalInt:Int?

regularInt = 100
optionalInt = 100

regularInt = regularInt + 5

print(regularInt)

if let newOptionalInt = optionalInt
{
    optionalInt = newOptionalInt + 5
    print(optionalInt!)
    
}





