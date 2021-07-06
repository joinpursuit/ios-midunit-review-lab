import UIKit

//## Strings
//
//1. **Given a String, return a String with each letter uppercased**
//
//Input: `Hello, there`
//
//Output: `HELLO, THERE`

"""
I will write a code here:

let str = "Hello, there"

print(str.uppercased())

//Prints: "HELLO, THERE"
"""

//
//2. **Given a String, return a String alternating between uppercase and lowercase letters**
//
//
//Input: `Hello, there`
//
//Output: `HeLlO, tHeRe`

"""
var str = "Hello, there"
var newStr = ""

for (index, char) in str.enumerated() {
    if index % 2 == 0 {
        newStr.append(char.uppercased())
    } else {
        newStr.append(char)
    }
}

//prints: "HeLlO, tHeRe"


//3. **Given a String, return a String with all occurrences of a given letter removed**
//
//Input: `Hello, there`
//
//Output: `Hllo, thr`

"""
var str = "Hello, there"
var letter = "e"
var newStr = ""
for char in str where String(char) != letter {
        newStr.append(char)
    }
    //ptints: "Hllo, thr"
    """

//## Arrays
//
//
//1. **Given an array of type [Int], return the largest element**
//
//Input: `[1,5,2,4,1,4]`
//
//Output: `5`

"""
let array = [1,5,2,4,1,4]

var maxNum = array.max() ?? 1

// prints: 5
"""

//2. **Given an array of type [Int], return the smallest element**
//
//Input: `[1,5,2,4,1,4]`
//
//Output: `1`

"""
let array3 = [1,5,2,4,1,4]

var maxMin = array3.min() ?? 0

//prints: 1
"""

//3. **Given an array of type [Int], return its sum**
//
//Input: `[1,5,2,4,1,4]`
//
//Output: `17`

"""
let array4 = [1,5,2,4,1,4]

var sum = 0

for num in array4 {
    sum += num
}
// prints: 17
"""

//4. **Given an array of type [Double], return its average**
//
//Input: `[3,4.5,7.5,2,1]`
//
//Output: `3.6`

"""
let arr = [3,4.5,7.5,2,1]

var arrSum = 0.0

for num in arr {
    arrSum += num
}
let averageOfArr = arrSum / Double(arr.count)

print(averageOfArr)

// prints: 3.6
"""
//
//5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**
//
//Input: `[3,4.5,7.5,2,1], 3`
//
//Output: `12`

"""
let newArray = [3,4.5,7.5,2,1]
let number = 3.0
var sumOfNum = 0.0
//var greaterArr: [Double] = []

for num in newArray {
    if num > number {
        sumOfNum += num
    }
}

print(sumOfNum)
// prints: 12.0
"""


//6. **Given an array of type [Double], return the product of all the elements**
//
//Input: `[3,4.5,7.5,2,1]`
//
//Output: `202.5`

"""
let arr2 = [3,4.5,7.5,2,1]
var mult: Double = 1.0

for num in arr2 {
   mult *= num
}

print(mult)
//prints: 202.5
"""

//7. **Given an array of type [Int], return the second smallest value in the array**
//
//Input: `[3,6,1,9,4,8]`
//
//Output: `3`

"""
var someArr = [3,6,1,9,4,8]

for num in someArr {
    if num != num {
        someArr.remove(at: num)
    }
}

let sortedArr = someArr.sorted()

print(sortedArr[1])

// prints: 3



//## Optionals
//
//1. **Given an array of type [String?] return an array of [String] removing all nil values**
//
//Input: `[nil, "We", "come", nil, "in", "peace"]`
//
//Output: `["We", "come", "in", "peace"]`

let arrayWithNil = [nil, "We", "come", nil, "in", "peace"]
var arrWithoutNil = [String]()

for str in arrayWithNil {
    if let validStr = str {
        arrWithoutNil.append(validStr)
    }
}

print(arrWithoutNil)
// prints: ["We", "come", "in", "peace"]

//2. **Given an array of type [String?]? return an array of [String] removing all nil values**
//
//Input: `nil`
//
//Output: `[]`


//
//3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**
//
//Input: `[4, nil, 9, 5, nil]`
//
//Output: `18`


//4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**
//
//Input: `nil`
//
//Output: `0`



//5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**
//
//Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`
//
//Output: `24`

let optArr = [1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3]
let optInt: Int? = 1

var sumOfNotNil = 0

for optNum in optArr {
    if optNum != optInt ?? 0 {
    if let notNilNum = optNum {
        sumOfNotNil += notNilNum
    }
}
}
print(sumOfNotNil)
// print: 24

//## Dictionaries
//
//1. **Given an array of type [String], return a copy of the array with all duplicate values removed**
//
//Input: `["apple", "apple", "banana", "banana", "banana", "cake", "cake"]`
//
//Output: `["apple", "banana", "cake"]`

let notUniqueArr = ["apple", "apple", "banana", "banana", "banana", "cake", "cake"]
let uniqueArr = Array(Set(notUniqueArr))

print(uniqueArr)
//prints: ["apple", "cake", "banana"]

//
//2. **Given a String, find the most frequently occurring letter**
//
//Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`
//
//Output: `t`
//
//3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**
//
//Input: `[1,1,2,3,3,3,4,5,6,6,7]`
//
//Output: `[1,3,6]`
//
//4. **Given a String, find the second most frequently occurring letter in a string**
//
//Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`
//
//Output `o`
//
//
//## Closures
//
//1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**
//
//Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`
//
//Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`

let unsortedArray = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
let sortedArray = unsortedArray.sorted()

print(sortedArray)
//prints: ["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]


//
//2. **Given an array of type [String], return an array that contains the Strings sorted by length**
//
//Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`
//
//Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`

let unsortedArr2 = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
let sortedArr2 = unsortedArr2.sorted(by: {$0.count < $1.count})


print(sortedArr2)
// prints: ["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]

//3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**
//
//Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`
//
//Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`

var longArr = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
var shorterArr = longArr.filter { (str) -> Bool in
    str.count >= 4 }

print(shorterArr)
//prints: ["Never", "trust", "computer", "can\'t", "throw", "window"]

//
//4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**
//
//Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`
//
//Output: `Never trust a computer you can't throw out a window`

let charsInStrArr = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
let oneSting = charsInStrArr.reduce("", {$0 + " " + $1})
 print(oneSting)
//prints: Never trust a computer you can't throw out a window


//
//
//## Enums
//
//
//1. **Given an array of type [Int] and an instance of NumberType (defined below), return an array containing only all the even or odd numbers.**
//
//```swift
//enum NumberType {
//    case even
//    case odd
//}
//```
//
//Input: `[1,2,3,4,5,6], NumberType.odd`
//
//Output: `[1,3,5]`

enum NumberType {
    case even
    case odd
}

func evenOrOddNum (array: [Int], type: NumberType) -> [Int] {
    switch type {
    case .even:
        return array.filter({$0 % 2 == 0})
    case .odd:
        return array.filter({$0 % 2 == 1})
    }
}
print(evenOrOddNum (array: [1,2,3,4,5,6], type: NumberType.odd))
//prints: [1, 3, 5]

//
//2. **Given a String and an instance of StringType (defined below), return the String either lowercased or uppercased**
//
//```swift
//enum StringType {
//    case lowercase
//    case uppercase
//}
//```
//
//Input: `"Design is not just what it looks like and feels like. Design is how it works", .uppercase`
//
//Output: ``"DESIGN IS NOT JUST WHAT IT LOOKS LIKE AND FEELS LIKE. DESIGN IS HOW IT WORKS"``

enum StringType {
    case lowercase
    case uppercase
}

func lowerOrUpperCase (str: String, type: StringType) -> String {
    switch type {
    case .lowercase:
        return str.lowercased()
    case .uppercase:
        return str.uppercased()
    }
}

print(lowerOrUpperCase (str: "Design is not just what it looks like and feels like. Design is how it works", type: StringType.uppercase))
//prints: "DESIGN IS NOT JUST WHAT IT LOOKS LIKE AND FEELS LIKE. DESIGN IS HOW IT WORKS"

//
//3. **Given an array of type [FileStatus] (defined below) and an Int, return an array containing only files that were saved more than that many times**
//
//```swift
//enum FileStatus: CustomStringConvertible {
//    case unsaved
//    case saved(numberOfVersions: Int)
//    var description: String {
//        switch self {
//        case .unsaved: return "Unsaved File"
//        case let .saved(numberOfVersions): return "File that has been saved \(numberOfVersions) times"
//        }
//    }
//}
//```
//
//Input: `[FileStatus.saved(numberOfVersions: 5), FileStatus.saved(numberOfVersions: 3), FileStatus.saved(numberOfVersions: 8)], 4`
//
//Output: `[File that has been saved 5 times, File that has been saved 8 times]`



