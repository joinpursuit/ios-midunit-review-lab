## Mid Unit-1 Review


## Strings

1. **Given a String, return a String with each letter uppercased**

Input: `Hello, there`

Output: `HELLO, THERE`

```swift
func letterUppercased(_ input: String) -> String {
    input.uppercased()
}
```

2. **Given a String, return a String alternating between uppercase and lowercase letters**


Input: `Hello, there`

Output: `HeLlO, tHeRe`

```swift
func altLetterUppercased(_ input: String) -> String {
    for (index, char) in input.enumerated() {
        if index % 2 == 0 {
            char.uppercased()
        } else {
            char.lowercased()
        }
    }
    return input
}
```

3. **Given a String, return a String with all occurrences of a given letter removed**

Input: `Hello, there`

Output: `Hllo, thr`

```
func letterRemoved(inputString input: String, char: Character) -> String {
    var str = String()
    for (index, element) in input.enumerated() {
        if char != element{
            str.append(element)
        }
    }
    return str
}
```

## Arrays


1. **Given an array of type [Int], return the largest element**

Input: `[1,5,2,4,1,4]`

Output: `5`

```swift
func largestElement(inputArr arr: [Int]) -> Int {
    var maxNum = 0
    for num in arr {
        if num > maxNum {
            maxNum = num
        }
    }
    return maxNum
}
```

2. **Given an array of type [Int], return the smallest element**

Input: `[1,5,2,4,1,4]`

Output: `1`

```swift
func smallestElement(inputArr arr: [Int]) -> Int {
    var minNum = arr[0]
    for num in arr {
        if num < minNum {
            minNum = num
        }
    }
    return minNum
}
```

3. **Given an array of type [Int], return its sum**

Input: `[1,5,2,4,1,4]`

Output: `17`

```
func sum(inputArr arr:[Int]) -> Int {
    var sum = 0
    for num in arr{
        sum+=num
    }
    return sum
}
```

4. **Given an array of type [Double], return its average**

Input: `[3,4.5,7.5,2,1]`

Output: `3.6`

```swift
func average(inputArr arr:[Double]) -> Double {
    var sum = 0.0
    let numOfElements = Double(arr.count)
    for num in arr {
        sum+=num
    }
    return sum/numOfElements
}
```

5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**

Input: `[3,4.5,7.5,2,1], 3`

Output: `12`

```swift
func sumOfNumGreaterThanANum (inputArr arr:[Double], targetNum: Double) -> Double {
    var sum = 0.0
    for num in arr where num > targetNum {
        sum += num
    }
    return sum
}
```

6. **Given an array of type [Double], return the product of all the elements**

Input: `[3,4.5,7.5,2,1]`

Output: `202.5`

```swift
func product (inputArr arr: [Double]) -> Double {
    var product = 1.0
    for num in arr {
        product*=num
    }
    return product
}
```

7. **Given an array of type [Int], return the second smallest value in the array**

Input: `[3,6,1,9,4,8]`

Output: `3`

```swift
func secondSmallestValue (inputArr arr: [Double]) -> Double {
    var smallestNum = arr[0]
    var secondSmallestNum = arr[0]
    for num in arr {
        if num < smallestNum {
            smallestNum = num
        }
    }
    for num2 in arr {
        if num2 < secondSmallestNum && num2 > smallestNum {
            secondSmallestNum = num2
        }
    }
    return secondSmallestNum
}
```

## Optionals

1. **Given an array of type [String?] return an array of [String] removing all nil values**

Input: `[nil, "We", "come", nil, "in", "peace"]`

Output: `["We", "come", "in", "peace"]`

```swift
func noNilVal (inputArr arr: [String?]) -> [String]{
    var validStringArr = [String]()
    for optionalString in arr {
        if let valideOptionalString = optionalString  {
            validStringArr.append(valideOptionalString)
        }
    }
    return validStringArr
}
```

2. **Given an array of type [String?]? return an array of [String] removing all nil values**

Input: `nil`

Output: `[]`

```swift
func wholeNoNilVal (inputArr arr: [String?]?) -> [String]{
    var validStringArr = [String]()
    for element in arr ?? [] {
        if let validElement = element {
            validStringArr.append(validElement)
        }
    }
    return validStringArr
}
```

3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `[4, nil, 9, 5, nil]`

Output: `18`

```swift
func sumOfNonNil (inputArr arr:[Int?]) -> Int{
    var sum = 0
    for num in arr {
        guard let validNum = num else {
            continue
        }
        sum += validNum
    }
    return sum
}
```

4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `nil`

Output: `0`

```swift
func wholeSumOfNonNil (inputArr arr: [Int?]?) -> Int{
    var validSum = 0
    for element in arr ?? []{
        guard let validElement = element else{
            continue
        }
        validSum += validElement
    }
    return validSum
}
```

5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**

Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`

Output: `24`

```swift
func sumNotEq (inputArr arr: [Int?], targetNum: Int?) -> Int {
    var sum = 0
    for num in arr {
        guard let validNum = num else {
            continue
        }
        if let validTargetNum = targetNum{
            if validNum != validTargetNum {
                sum += validNum
            }
        } else {
            sum += validNum
        }
    }
    return sum
}
```

## Dictionaries

1. **Given an array of type [String], return a copy of the array with all duplicate values removed**

Input: `["apple", "apple", "banana", "banana", "banana", "cake", "cake"]`

Output: `["apple", "banana", "cake"]`

```swift
func noDups (inputArr arr: [String]) -> [String]{
    let setToArr = Array(Set(arr))
    return setToArr
}
```

2. **Given a String, find the most frequently occurring letter**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output: `t`

```swift
func mostFreqChar (inputStr str: String) -> Character {
    var freqDict = [Character: Int]()
    var mostFreqChar:Character = "?"
    var highestCharCount = 0
    
    for char in str where char != " "{
        freqDict[char] = (freqDict[char] ?? 0) + 1
    }
    
    for (key, value) in freqDict{
        if highestCharCount < value {
            highestCharCount = value
            mostFreqChar = key
        }
    }
    return mostFreqChar
}
```

3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**

Input: `[1,1,2,3,3,3,4,5,6,6,7]`

Output: `[1,3,6]`

```swift
func mostFreqNum2 (inputIntArr arr: [Int]) -> [Int] {
    var freqDict = [Int: Int]()
    var numThatAppearTwice = [Int]()
    
    
    for num in arr{
        freqDict[num] = (freqDict[num] ?? 0) + 1
    }
    
    for (key, value) in freqDict{
        if value >= 2 {
            numThatAppearTwice.append(key)
        }
    }
    return numThatAppearTwice
}
```

4. **Given a String, find the second most frequently occurring letter in a string**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output `o`

```swift
func most2ndFreqChar (inputStr str: String) -> Character {
    var freqDict = [Character: Int]()
    var mostFreqChar:Character = "?"
    var most2ndFreqChar:Character = "!"
    var highestCharCount = 0
    var secondHighestCharCount = 0
    
    for char in str where char != " "{
        freqDict[char] = (freqDict[char] ?? 0) + 1
    }
    
    for (key, value) in freqDict{
        if highestCharCount < value {
            highestCharCount = value
            mostFreqChar = key
        }
    }
    
    for (key, value) in freqDict{
        if secondHighestCharCount < value && value < highestCharCount{
            secondHighestCharCount = value
            most2ndFreqChar = key
        }
    }
    
    return most2ndFreqChar
}
```


## Closures

1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`

```swift
func strArrSorted(inputArr input:[String]) -> [String] {
    return input.sorted()
}
```

2. **Given an array of type [String], return an array that contains the Strings sorted by length**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`

```swift
func strArrSortedLength(inputArr input:[String]) -> [String] {
    input.sorted (by: {$0.count < $1.count})
}
```

3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`

```swift
func strArrLength(inputArr input:[String]) -> [String] {
    input.filter { (element) -> Bool in
        if element.count >= 4 {
            return true
        } else {
            return false
        }
    }
}
```

4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `Never trust a computer you can't throw out a window`

```swift
func strArr2Str(inputArr input: [String]) -> String {
    var str = String()
    for strElement in input {
        str += strElement + " "
    }
    return str
}
```

## Enums


1. **Given an array of type [Int] and an instance of NumberType (defined below), return an array containing only all the even or odd numbers.**

```swift
enum NumberType {
    case even
    case odd
}
```

Input: `[1,2,3,4,5,6], NumberType.odd`

Output: `[1,3,5]`

```swift
    func enumEvenOrOdd (inputArr: [Int], evenOrOdd: NumberType) -> [Int] {
        var newArr = [Int]()
        
        if evenOrOdd == .odd {
           newArr = inputArr.filter({$0 % 2 == 1})
        } else if evenOrOdd == .even {
           newArr = inputArr.filter({$0 % 2 == 0})
        }
        return newArr
    }
```

2. **Given a String and an instance of StringType (defined below), return the String either lowercased or uppercased**

```swift
enum StringType {
    case lowercase
    case uppercase
}
```

Input: `"Design is not just what it looks like and feels like. Design is how it works", .uppercase`

Output: ``"DESIGN IS NOT JUST WHAT IT LOOKS LIKE AND FEELS LIKE. DESIGN IS HOW IT WORKS"``

```swift
func allUpOrLow (inputStr: String, upOrLow: StringType) -> String {
    var newStr = String()
    if upOrLow == .lowercase {
        newStr = inputStr.lowercased()
    } else if upOrLow == .uppercase {
        newStr = inputStr.uppercased()
    }
    return newStr
}
```

3. **Given an array of type [FileStatus] (defined below) and an Int, return an array containing only files that were saved more than that many times**

```swift
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
```

Input: `[FileStatus.saved(numberOfVersions: 5), FileStatus.saved(numberOfVersions: 3), FileStatus.saved(numberOfVersions: 8)], 4`

Output: `[File that has been saved 5 times, File that has been saved 8 times]`

```swift
func savedFiles (filesArr: [FileStatus], numOfSaves: Int) -> [String] {
    var newArr = [String]()
    
    for files in filesArr {
        switch files {
        case .saved(let verNum):
            if verNum > numOfSaves {
                newArr.append(files.description)
            }
        case .unsaved:
             continue
        }
    }
    
    return newArr
}
```
