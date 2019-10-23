## Mid Unit-1 Review


## Strings

1. **Given a String, return a String with each letter uppercased**

Input: `Hello, there`

Output: `HELLO, THERE`

Answer
```swift
func uppercase(str: String) -> String {
    return str.uppercased()
}
```

2. **Given a String, return a String alternating between uppercase and lowercase letters**


Input: `Hello, there`

Output: `HeLlO, tHeRe`

Answer
```swift
func updown(str: String) -> String {
    var customString = ""
    for (index, char) in str.enumerated() {
        if index % 2 == 0 {
            customString += char.uppercased()
        } else {
            customString += char.lowercased()
        }
    }
    return customString
}
```
3. **Given a String, return a String with all occurrences of a given letter removed**

Input: `Hello, there`

Output: `Hllo, thr`

Answer
```swift
func removeLetter(str1: String, str2: String) -> String {
    return str1.replacingOccurrences(of: str2, with: "")
}
```
## Arrays


1. **Given an array of type [Int], return the largest element**

Input: `[1,5,2,4,1,4]`

Output: `5`

Answer
```swift
func maxElement(arr: [Int]) -> Int {
    return arr.max() ?? 0
}
```
2. **Given an array of type [Int], return the smallest element**

Input: `[1,5,2,4,1,4]`

Output: `1`

Answer
```swift
func minElement(arr: [Int]) -> Int {
    return arr.min() ?? 0
}
```
3. **Given an array of type [Int], return its sum**

Input: `[1,5,2,4,1,4]`

Output: `17`

Answer
```swift
func sumElement(arr: [Int]) -> Int {
    return arr.reduce(0, +)
}
```
4. **Given an array of type [Double], return its average**

Input: `[3,4.5,7.5,2,1]`

Output: `3.6`

Answer
```swift
func averageElement(arr: [Double]) -> Double {
    return arr.reduce(0, +) / Double(arr.count)
}
```
5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**

Input: `[3,4.5,7.5,2,1], 3`

Output: `12`

Answer
```swift
func sumOfFilteredElement(arr: [Double], num: Double) -> Double {
    var sum = 0.0
    for number in arr {
        if number > num {
            sum += number
        }
    }
    return sum
}
```
6. **Given an array of type [Double], return the product of all the elements**

Input: `[3,4.5,7.5,2,1]`

Output: `202.5`

Answer
```swift
func productElement(arr: [Double]) -> Double {
    return arr.reduce(1, *)
}
```
7. **Given an array of type [Int], return the second smallest value in the array**

Input: `[3,6,1,9,4,8]`

Output: `3`

Answer
```swift
func secoundSmallestElement(arr: [Int]) -> Int {
    let arr = arr.sorted()
    
    return arr[1]
}
```
## Optionals

1. **Given an array of type [String?] return an array of [String] removing all nil values**

Input: `[nil, "We", "come", nil, "in", "peace"]`

Output: `["We", "come", "in", "peace"]`

Answer
```swift
func removeNil(arr: [String?]) -> [String] {
    return arr.compactMap({ $0 })
}
```
2. **Given an array of type [String?]? return an array of [String] removing all nil values**

Input: `nil`

Output: `[]`

Answer
```swift
func removeNil(arr: [String?]?) -> [String] {
    
    if let arr = arr {
        return arr.compactMap({ $0 })
    }
    return []
}
```
3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `[4, nil, 9, 5, nil]`

Output: `18`

Answer
```swift
func removeNil(arr: [Int?]) -> [Int] {
    var list = [Int]()
    for num in arr {
        guard let num = num else { return [] }
        list.append(num)
    }
    return list
}
```
4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**

Answer
```swift
func removeNil(arr: [Int?]?) -> [Int] {
    guard let arr = arr else { return [] }
    return arr.compactMap({ $0 })
}
```
Input: `nil`

Output: `0`

5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**

Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`

Output: `24`

Answer
```swift
func sumExceptTheGivenNumber(arr: [Int?], num: Int) -> Int {
    return arr.compactMap({ $0 })
        .filter { $0 != num }
        .reduce(0, +)
}
```
## Dictionaries

1. **Given an array of type [String], return a copy of the array with all duplicate values removed**

Input: `["apple", "apple", "banana", "banana", "banana", "cake", "cake"]`

Output: `["apple", "banana", "cake"]`

Answer
```swift
func removeDuplicate(arr: [String]) -> Set<String> {
    return Set(arr)
}
```
2. **Given a String, find the most frequently occurring letter**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output: `t`

Answer
```swift
func mostFrequentLetter(str: String) -> String {
    var dict:[Character: Int]  = [:]
    var count = 0
    var mostFrequentStr = ""
    
    for char in str {
        if dict[char] == nil {
            dict[char] = 1
        } else {
            dict[char] = (dict[char] ?? 0) + 1
        }
    }
    for (char, num) in dict where char != " "{
        if num > count {
            count = num
            mostFrequentStr = String(char)
        }
    }
    return mostFrequentStr
}
```
3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**

Input: `[1,1,2,3,3,3,4,5,6,6,7]`

Output: `[1,3,6]`
Answer
```swift
func apperedTwice(arr: [Int]) -> Set<Int> {
    var uniquNum = Set[]
    var numApperedTwice = [Set]()
    for num in arr {
        if !uniquNum.contains(num) {
            uniquNum.insert(num)
        } else {
        numApperedTwice.insert(num)
        }
    }
    return numApperedTwice
}
```

4. **Given a String, find the second most frequently occurring letter in a string**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output `o`


## Closures

1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`

2. **Given an array of type [String], return an array that contains the Strings sorted by length**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`

3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`

4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `Never trust a computer you can't throw out a window`


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

2. **Given a String and an instance of StringType (defined below), return the String either lowercased or uppercased**

```swift
enum StringType {
    case lowercase
    case uppercase
}
```

Input: `"Design is not just what it looks like and feels like. Design is how it works", .uppercase`

Output: ``"DESIGN IS NOT JUST WHAT IT LOOKS LIKE AND FEELS LIKE. DESIGN IS HOW IT WORKS"``

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
