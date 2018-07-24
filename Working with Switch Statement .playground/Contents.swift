//var richter:Int
//
//richter = -10
//
//switch richter {
////Half open range (till 3)
//case 1..<3: print("Microearthquakes, not felt, or felt rarely. Recorded by seismographs.")
//
////One sided range
//case ...6: print("Felt slightly by some people. No damage to buildings.")
//// we can have multiple line of code in a switch case
//    print("Even this can be scary 😱😱😱😱")
//
////Closed range
//case 7...12: print("Often felt by people, but very rarely causes damage. Shaking of indoor objects can be noticeable.")
//// Half open, one sided range
//case ..<21: print("Often felt by people, but very rarely causes damage. Shaking of indoor objects can be noticeable.")
//
//// Without default swift would give below error
////Switch must be exhaustive
//default:
// print("At or near total destruction – severe damage or collapse to all buildings. Heavy damage and shaking extends to distant locations. Permanent changes in ground topography.")
//}
//
//
//var sizeData:String
//
//sizeData = "KB"
//
//switch sizeData {
//case "kb","KB":
//    print("Kilobyte")
//
//// even for string if we dont have default value then error is thrown by the swift compiler
//default:
//    print("Vikas")
//}
//
//

// Switch cases without having default values



enum MovieGenre:String
{
    case romantic
    case horror
    case drama
    case comedy
    case thriller
    
    func setToMyFavGenre()
    {
        print(self)
    }
}


var myFavMovieGenre:MovieGenre = MovieGenre.comedy



switch myFavMovieGenre
{
    
case MovieGenre.romantic:
    print("Its a romatic movie")
    
case .horror:
    print("Its a \(myFavMovieGenre) movie")
    
case .drama:
    print("Its a \(myFavMovieGenre) movie")

case .comedy:
    myFavMovieGenre.setToMyFavGenre()
    
case .thriller:
    print("Its a \(myFavMovieGenre) movie")
}

