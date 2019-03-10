import Cocoa

var str = "Hello, playground"


var text:String?

let shortForm: Int? = Int("42")
let longForm: Optional<Int> = Int("42")



//     let number: Int? = Optional.some(42)
//     let noNumber: Int? = Optional.none
//     //print(noNumber == nil)



/// You must unwrap the value of an `Optional` instance before you can use it
/// in many contexts. Because Swift provides several ways to safely unwrap
/// optional values, you can choose the one that helps you write clear,
/// concise code.
///
/// The following examples use this dictionary of image names and file paths:
///
   let imagePaths = ["star": "/glyphs/star.png",
                      "portrait": "/images/content/portrait.jpg",
                      "spacer": "/images/shared/spacer.gif"]
///
/// Getting a dictionary's value using a key returns an optional value, so
/// `imagePaths["star"]` has type `Optional<String>` or, written in the
/// preferred manner, `String?`.
///
/// Optional Binding
/// ----------------
///
/// To conditionally bind the wrapped value of an `Optional` instance to a new
/// variable, use one of the optional binding control structures, including
/// `if let`, `guard let`, and `switch`.
///
    if let starPath = imagePaths["star"] {
         //print("The star image is at '\(starPath)'")
     } else {
        print("Couldn't find the star image")
     }
     // Prints "The star image is at '/glyphs/star.png'"



/// Optional Chaining
/// -----------------
///
/// To safely access the properties and methods of a wrapped instance, use the
/// postfix optional chaining operator (postfix `?`). The following example uses
/// optional chaining to access the `hasSuffix(_:)` method on a `String?`
/// instance.
///
    if imagePaths["star"]?.hasSuffix(".png") == true {
        //print("The star image is in PNG format")
     }
///     // Prints "The star image is in PNG format"



/// Using the Nil-Coalescing Operator
/// ---------------------------------
///
/// Use the nil-coalescing operator (`??`) to supply a default value in case
/// the `Optional` instance is `nil`. Here a default path is supplied for an
/// image that is missing from `imagePaths`.

//let imagePaths = ["star": "/glyphs/star.png",
//                  "portrait": "/images/content/portrait.jpg",
//                  "spacer": "/images/shared/spacer.gif"]
///
     let defaultImagePath = "/images/default.png"
     let heartPath = imagePaths["heart"] ?? defaultImagePath
     //print(heartPath)
///     // Prints "/images/default.png"
///
/// The `??` operator also works with another `Optional` instance on the
/// right-hand side. As a result, you can chain multiple `??` operators
/// together.
///
     var shapePath = imagePaths["cir"] ?? imagePaths["star"] ?? defaultImagePath
     //print(shapePath)

    shapePath = imagePaths["cir"] ?? imagePaths["squ"] ?? defaultImagePath
    //print(shapePath)
///     // Prints "/images/default.png"






/// Unconditional Unwrapping
/// ------------------------
///
/// When you're certain that an instance of `Optional` contains a value, you
/// can unconditionally unwrap the value by using the forced
/// unwrap operator (postfix `!`). For example, the result of the failable `Int`
/// initializer is unconditionally unwrapped in the example below.
///
     let number = Int("42")!
     //print(number)
///     // Prints "42"
///
/// You can also perform unconditional optional chaining by using the postfix
/// `!` operator.
///
    let isPNG = imagePaths["star"]!.hasSuffix(".png")
     //print(isPNG)
///     // Prints "true"
///


//let isNPG = imagePaths["vik"]!.hasSuffix(".png")
//print(isPNG)

/// Unconditionally unwrapping a `nil` instance with `!` triggers a runtime
/// error.
