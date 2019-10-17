import UIKit


//1. **Given a String, return a String with each letter uppercased**
func stringUppercased(_ str: String) -> String {
    var uppercasedString = String()
    for char in str {
        uppercasedString += char.uppercased()
    }
    return uppercasedString
}

func stringUppercased1(_ str: String) -> String {
    str.uppercased()
}

func everyOtherLetter (_ str: String) -> String {
    var alternatingString = String()
    for (x, y) in str.enumerated() {
        if x % 2 == 0 {
            alternatingString += y.uppercased()
        } else {
            alternatingString += y.lowercased()
        }
    }
    return alternatingString
}

stringUppercased("Hey wat up")
everyOtherLetter("hey wat up")

let greetings = "hey wat up how u doing"
let greetingsArr = greetings.map() {$0.uppercased()}
let greetingsUppercased = greetingsArr.joined()

func removeCharacterFromString (char: Character, str: String) -> String {
    return str.filter( { $0 != char })
}

let arrayOfInts = [1,5,2,4,1,4]

func largestInt (_ arr: [Int]) -> Int {
    var largestNum = arr[0]
    for num in arr {
        if num > largestNum {
            largestNum = num
        }
    }
    return largestNum
}

largestInt(arrayOfInts)

func smallestInt(_ arr: [Int] ) -> Int {
    return arr.sorted()[0]
}

func sumOfIntArray(_ arr: [Int] ) -> Int {
    return arr.reduce(0, +)
}

func averageOfDoubleArray(_ arr: [Double]) -> Double {
    var sum = Double()
    for num in arr {
        sum += num
    }
    return sum / Double(arr.count)
}

let arrayOfDoubles = [3,4.5,7.5,2,1]


func sumOfAllDoublesGreaterThanNumber(_ number: Double, _ arr: [Double]) -> Double {
    var sum =  0.0
    for num in arr {
        if num > number {
            sum += num
        }
    }
    return sum
}

func productOfAllDoubles(_ arr: [Double]) -> Double {
    return arr.reduce(0, *)
}

print(sumOfAllDoublesGreaterThanNumber(3, arrayOfDoubles))

func secondSmallestInteger(_ arr: [Int]) -> Int {
    var smallestInt = arr.randomElement()!
    var secondSmallestInt = arr.randomElement()!
    for num in arr {
        if num < smallestInt {
            smallestInt = num
        }
        if num > smallestInt && num < secondSmallestInt {
            secondSmallestInt = num
        }
    }
    return secondSmallestInt
}

let testArray = [3,6,1,9,4,8]
secondSmallestInteger(testArray)

func stringWithNoNil(_ arr:[String?]) -> [String] {
    arr.compactMap({$0})
}

func arrayStringWithNoNil(_ arr:[String?]?) -> [String] {
    var goodArr = [String]()
    if let unwrappedArr = arr {
        for string in unwrappedArr {
            if let str = string {
                goodArr.append(str)
            }
        }
    }
    return goodArr
}

func sumOfIntOptionals(_ arr:[Int?]) -> Int {
    var sum = 0
    for num in arr {
        guard let number = num else {
            continue
        }
        sum += number
    }
    return sum
}

sumOfIntOptionals([4, nil, 9, 5, nil])

func sumOfIntOptionalsInOptionalArray(_ arr: [Int?]?) -> Int {
    guard let goodArray = arr else {
        return 0
    }
    var sum = 0
    for num in goodArray {
        guard let number = num else {
            continue
        }
        sum += number
    }
    return sum
}

func uniqueArray(_ arr: [String]) -> [String] {
    return Array(Set(arr))
}

func freqOccuringLetter(_ str: String) -> Character {
    var letterDict = [Character: Int]()
    var letterHighestCount = 0
    var letterHighestUsed: Character = "a"
    for letter in str where letter != " " {
        letterDict[letter] = (letterDict[letter] ?? 0) + 1
    }
    for (key, value) in letterDict {
        if value > letterHighestCount {
            letterHighestCount = value
            letterHighestUsed = key
        }
    }
    return letterHighestUsed
}

print(freqOccuringLetter("Never trust a computer you can't throw out a window ~ Steve Wozniak"))
let str = "Watermelon"
var letterDict = [Character: Int]()
var letterHighestCount = 0
var letterHighestUsed: Character = "a"
for letter in str {
    letterDict[letter] = (letterDict[letter] ?? 0) + 1
}

for (key, value) in letterDict {
    if value > letterHighestCount {
        letterHighestCount = value
        letterHighestUsed = key
    }
}
print(letterDict)


func integersAppearedTwice(_ arr: [Int]) -> [Int] {
    var integerDict = [Int: Int]()
    var twiceArray = [Int]()
    for num in arr {
        integerDict[num] = (integerDict[num] ?? 0) + 1
        if integerDict[num] == 2 {
            twiceArray.append(num)
        }
    }
    return twiceArray
}

integersAppearedTwice([1,1,2,3,3,3,4,5,6,6,7])

func secondMostFreqOccurringLetterInAString(_ str: String) -> Character {
    var letterDict = [Character: Int]()
    var mostFreqOccurringCharCount = 0
    var mostFreqOccurrngChar: Character = " "
    var secondMostFreqOcurringCharCount = 0
    var secondMostFreqOcurringChar: Character = "a"
    for char in str where char != " " {
        letterDict[char] = (letterDict[char] ?? 0) + 1
    }
    for (key, value) in letterDict {
        if value > mostFreqOccurringCharCount {
            mostFreqOccurringCharCount = value
            mostFreqOccurrngChar = key
        }
        if value > secondMostFreqOcurringCharCount && value < mostFreqOccurringCharCount {
            secondMostFreqOcurringCharCount = value
            secondMostFreqOcurringChar = key
        }
    }
    print(letterDict)
    return secondMostFreqOcurringChar
}


secondMostFreqOccurringLetterInAString("Never trust a computer you can't throw out a window ~ Steve Wozniak")

func sortedString(_ str: [String]) -> [String] {
    str.sorted(by: < )
}

sortedString(["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"])

func sortedStringByLength (_ arrStr: [String]) -> [String] {
    arrStr.sorted(by: { $0.count < $1.count })
}

sortedStringByLength(["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"])

func arrayOfStringsCountGreaterThanFour(_ arrStr: [String]) -> [String] {
    arrStr.filter( { $0.count >= 4})
}

func arrayOfStringsJoinedTogether (_ arrStr: [String]) -> String {
    var joinedString = ""
    for str in arrStr {
        joinedString += str + " "
    }
    joinedString.removeLast()
    return joinedString
}

arrayOfStringsJoinedTogether(["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"])

enum NumberType {
    case even
    case odd
}

func arrayOfOddOrEvenInt(_ arr: [Int],_ numberType: NumberType) -> [Int] {
    switch numberType {
    case .even:
        return arr.filter({$0 % 2 == 0 })
    case .odd:
        return arr.filter({$0 % 2 != 0 })
    }
}

arrayOfOddOrEvenInt([1,2,3,4,5,6], NumberType.even)
enum StringType {
    case lowercase
    case uppercase
}

func evenOrOddString( _ str: String, _ stringType: StringType) -> String {
    switch stringType {
    case .lowercase:
        return str.lowercased()
    case .uppercase:
        return str.uppercased()
    }
}

enum FileStatus: CustomStringConvertible {
    case unsaved
    case saved(numberOfVersions: Int)
    var description: String {
        switch self {
        case .unsaved: return "Unsaved File"
        case let .saved(numberOfVersions): return "File that has been saved \(numberOfVersions) times"
        }
    }
}

print([FileStatus.saved(numberOfVersions: 5), FileStatus.saved(numberOfVersions: 3), FileStatus.saved(numberOfVersions: 8)])

func arrayOfFilesSaved(_ fileStatusArr: [FileStatus], num: Int) -> [FileStatus] {
    var newArrayOfFilesSaved = [FileStatus]()
    for file in fileStatusArr {
        switch file {
        case .saved(let numberOfVersions):
            if numberOfVersions > num {
                newArrayOfFilesSaved.append(file)
            }
        case .unsaved: continue
        }
    }
    return newArrayOfFilesSaved
}

var ok2 = FileStatus.saved(numberOfVersions: 2)
ok2 = FileStatus.saved(numberOfVersions: 3)
