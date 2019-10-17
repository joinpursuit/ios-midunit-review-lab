## Mid Unit-1 Review


## Strings

1. **Given a String, return a String with each letter uppercased**

Input: `Hello, there`

Output: `HELLO, THERE`

```swift
func uppercase(input: String) -> String {
return input.uppercased()
}
```
2. **Given a String, return a String alternating between uppercase and lowercase letters**


Input: `Hello, there`

Output: `HeLlO, tHeRe`
```swift
func altnernatingUppercase(input: String) -> String {
    var result = [String]()
    for (index, each) in input.enumerated() {
        if index % 2 == 0 {
            result.append(each.uppercased())
        } else {
            result.append(each.lowercased())
        }
}
    return result.joined()
}
```

3. **Given a String, return a String with all occurrences of a given letter removed**

Input: `Hello, there`

Output: `Hllo, thr`
```swift
func removeCharacter(input: String, charToRemove: String) -> String {
    input.replacingOccurrences(of: charToRemove, with: "")
}
```

## Arrays


1. **Given an array of type [Int], return the largest element**

Input: `[1,5,2,4,1,4]`

Output: `5`
```swift
func largest(input: [Int]) -> Int {
    input.max()!
}
```

2. **Given an array of type [Int], return the smallest element**

Input: `[1,5,2,4,1,4]`

Output: `1`
```swift
func smallest(input: [Int]) -> Int {
    input.min()!
}
```

3. **Given an array of type [Int], return its sum**

Input: `[1,5,2,4,1,4]`

Output: `17`
```swift
func sum(input:[Int]) -> Int {
input.reduce(0,+)
}
```

4. **Given an array of type [Double], return its average**

Input: `[3,4.5,7.5,2,1]`

Output: `3.6`
```swift
func average(input: [Double]) -> Double {
input.reduce(0,+)/Double(input.count)
}
```

5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**

Input: `[3,4.5,7.5,2,1], 3`

Output: `12`
```swift
func greaterSum(input:[Double], greater: Double) -> Double {
    let filtered = input.filter{$0 > greater}
    return filtered.reduce(0,+)
}
```

6. **Given an array of type [Double], return the product of all the elements**

Input: `[3,4.5,7.5,2,1]`

Output: `202.5`
```swift
func product(input:[Double]) -> Double {
input.reduce(1,*)
}
```

7. **Given an array of type [Int], return the second smallest value in the array**

Input: `[3,6,1,9,4,8]`

Output: `3`
```swift
func secondSmallest(input:[Int]) -> Int {
input.sorted()[1]
}
```

## Optionals

1. **Given an array of type [String?] return an array of [String] removing all nil values**

Input: `[nil, "We", "come", nil, "in", "peace"]`

Output: `["We", "come", "in", "peace"]`

```swift
func noNil(input: [String?]) -> [String] {
input.compactMap{$0}
}
```

2. **Given an array of type [String?]? return an array of [String] removing all nil values**

Input: `nil`

Output: `[]`

```swift
func noNil(input: [String?]?) -> [String] {
    input?.compactMap{$0} ?? []
}
```

3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `[4, nil, 9, 5, nil]`

Output: `18`
```swift
func sum(input: [Int?]) -> Int {
var sum = 0
guard !input.isEmpty else {
return 0
}
for each in input {
    sum += each ?? 0
}
return sum
}
```

4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `nil`

Output: `0`
```swift
func sum(input: [Int?]?) -> Int {
var sum = 0
     guard input != nil else {
    return 0
    }
    for each in input ?? [0] {

        sum += each ?? 0
}
return sum
}
```

5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**

Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`

Output: `24`
```swift
func nonNilSum(input: [Int?], given: Int?) -> Int {
var sum = 0
    for each in input {
if each != given ?? 0 {
    sum += each ?? 0
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
func unique(input: [String]) -> [String] {
let newArray = Set(input)
    return Array(newArray)
}
```

2. **Given a String, find the most frequently occurring letter**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output: `t`
```swift
let joined = input.lowercased().replacingOccurrences(of: " ", with: "")
let mapped = joined.map{($0, 1)}
let dict = Dictionary(mapped, uniquingKeysWith: +)
let mostFrequent = dict.max{ a, b in a.value < b.value }
let mostFrequentChar = mostFrequent!.key
```

3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**

Input: `[1,1,2,3,3,3,4,5,6,6,7]`

Output: `[1,3,6]`
```swift
func elementsOccuringMoreThanOnce (input: [Int]) -> [Int] {
let mapped = input.map{($0, 1)}
let dict = Dictionary(mapped, uniquingKeysWith: +)
var multiElements: [Int] = []
for each in dict {
    if each.value > 1 {
        multiElements.append(Int(each.key))
    }
}
    return multiElements
}
```

4. **Given a String, find the second most frequently occurring letter in a string**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output `o`
```swift
let joined = input.lowercased().replacingOccurrences(of: " ", with: "")
let mapped = joined.map{($0, 1)}
let dict = Dictionary(mapped, uniquingKeysWith: +)
let mostFrequent = dict.sorted(by: {$0.value > $1.value})
let second = mostFrequent[1]
```

## Closures

1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`
```swift
let result = input.sorted()
```
2. **Given an array of type [String], return an array that contains the Strings sorted by length**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`
```swift
let result = input.sorted(by: {$0.count < $1.count})
```

3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`
```swift
let result = input.filter({$0.count >= 4})
```

4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `Never trust a computer you can't throw out a window`
```swift
let result = input.joined(separator: " ")
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
func oddEven(arr: [Int], type: NumberType) -> [Int] {

    switch type {
    case .even:
        return arr.filter{ $0 % 2 == 0}
    case .odd:
       return arr.filter{ $0 % 2 == 1}
}
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
func lowercaseUppercase(sentence: String, type: StringType) -> String {

    switch type {
    case .lowercase:
    return sentence.lowercased()
    case .uppercase:
    return sentence.uppercased()
}
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
func fileSavedOver(files: [FileStatus], amount: Int) -> [FileStatus] {
    var result = [FileStatus]()
    for each in files {
        switch each {
        case .saved(let numberOfVersions):
            if numberOfVersions > amount {
            result.append(each)
            }
        case .unsaved:
            continue
        }
    }
    return result
}
```
