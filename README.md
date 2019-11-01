## Mid Unit-1 Review


## Strings

1. **Given a String, return a String with each letter uppercased**

Input: `Hello, there`

Output: `HELLO, THERE`
```
var str = "Hello, there"
print(str.uppercased())
```

2. **Given a String, return a String alternating between uppercase and lowercase letters**


Input: `Hello, there`

Output: `HeLlO, tHeRe`


3. **Given a String, return a String with all occurrences of a given letter removed**

Input: `Hello, there`

Output: `Hllo, thr`
```
var str = "Hello, there"

var noEString = str.replacingOccurrences(of: "e", with: "")

print(noEString)
```

## Arrays


1. **Given an array of type [Int], return the largest element**

Input: `[1,5,2,4,1,4]`

Output: `5`
```
var myArray = [1,5,2,4,1,4]
var sortedArray = myArray.sorted()
var largstNumInArray = sortedArray[sortedArray.count - 1]
print(largstNumInArray)
```
2. **Given an array of type [Int], return the smallest element**

Input: `[1,5,2,4,1,4]`

Output: `1`
```
var arraOfInts = [1,5,2,4,1,4]
var smallestNumInArray = arraOfInts.sorted()[0]
```
3. **Given an array of type [Int], return its sum**

Input: `[1,5,2,4,1,4]`
```
var arrayOfNums = [1,5,2,4,1,4]
var sum = arrayOfNums.reduce(0, +)
or
var sum = 0
for num in arrayOfNums{
    sum += num
}
print(sum)
```

Output: `17`

4. **Given an array of type [Double], return its average**

Input: `[3,4.5,7.5,2,1]`

Output: `3.6`
```
var doubleArray = [3,4.5,7.5,2,1]
var countDouble = Double(doubleArray.count)
var averageOfArray = doubleArray.reduce(0, +) / countDouble
print(averageOfArray)
```

5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**

Input: `[3,4.5,7.5,2,1], 3`

Output: `12`
```
var doubleArray = [3,4.5,7.5,2,1]
var sumOfDoublesGreaterThenThree = 0.0
for num in doubleArray {
    if num > 3.0 {
        sumOfDoublesGreaterThenThree += num
    }
}
print(sumOfDoublesGreaterThenThree)
```

6. **Given an array of type [Double], return the product of all the elements**

Input: `[3,4.5,7.5,2,1]`

Output: `202.5`
```
var productOfDoubles = doubleArray.reduce(1, *)

print(productOfDoubles)
```

7. **Given an array of type [Int], return the second smallest value in the array**

Input: `[3,6,1,9,4,8]`

Output: `3`
```
var refactoredString = strFrequency.lowercased().replacingOccurrences(of: " ", with: "")
var charDict = [Character: Int]()
for char in refactoredString {
    if let value = charDict[char] {
        charDict[char] = value + 1
    } else {
        charDict[char] = 1
    }
}
print(charDict)

var mostFrequentLetter = ""
var mostTimes = 0
for (key, value) in charDict {
    if value > mostTimes {
        mostFrequentLetter = key.description
        mostTimes = value
    }
}
print(mostFrequentLetter)

var secondMostTimes = 0
var secondMostFrequentLetter = ""
for (key, value) in charDict {
    if value < mostTimes && value > secondMostTimes {
        secondMostFrequentLetter = key.description
        secondMostTimes = value
    }
}
print(secondMostFrequentLetter)
```

## Optionals

1. **Given an array of type [String?] return an array of [String] removing all nil values**

Input: `[nil, "We", "come", nil, "in", "peace"]`

Output: `["We", "come", "in", "peace"]`
```
var arrayOfStrings = [nil, "We", "come", nil, "in", "peace"]
var arrayNoNils = [String]()
for value in arrayOfStrings {
    if value != nil {
        arrayNoNils.append(value ?? "")
    }
}
print(arrayNoNils)
```
2. **Given an array of type [String?]? return an array of [String] removing all nil values**

Input: `nil`

Output: `[]`
```
var nils: [String?] = [nil]
var emptyArr = [String]()
for value in nils {
    if value != nil {
        emptyArr.append(value ?? "")
    }
}
print(emptyArr)
```

3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `[4, nil, 9, 5, nil]`

Output: `18`
```
var intArray = [4, nil, 9, 5, nil]
var arrayOfNonNils = [Int]()
for num in intArray {
    guard let num = num else { continue }
        arrayOfNonNils.append(num)
}
var sumOfNonNils = arrayOfNonNils.reduce(0, +)
print(sumOfNonNils)
```

4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `nil`

Output: `0`
```
var nilArray: [Int?]? = [nil]
var arrayOfNonNils2 = [Int]()
for num in nilArray ?? [0] {
    guard let num = num else { continue}
    arrayOfNonNils2.append(num)
}
var sumOfNils = arrayOfNonNils2.reduce(0, +)
print(sumOfNils)
```

5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**

Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`

Output: `24`
```
var arrayOfNumsAndNils = [1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3]
var optionalInt: Int? = 1
var arrayOnlyNums = [Int]()
for num in arrayOfNumsAndNils {
    guard let num = num else {continue}
    arrayOnlyNums.append(num)
}
var arrayNoOnes = [Int]()
for num in arrayOnlyNums {
if num != optionalInt {
    arrayNoOnes.append(num)
    }
}
var sumOfNoOnes = arrayNoOnes.reduce(0, +)
print(sumOfNoOnes)
```

## Dictionaries

1. **Given an array of type [String], return a copy of the array with all duplicate values removed**

Input: `["apple", "apple", "banana", "banana", "banana", "cake", "cake"]`

Output: `["apple", "banana", "cake"]`
```
var fruitArray = ["apple", "apple", "banana", "banana", "banana", "cake", "cake"]

var fruitDict = [String:Int]()
for fruit in fruitArray {
    if let value = fruitDict[fruit] {
        fruitDict[fruit] = value + 1
    } else {
        fruitDict[fruit] = 1
    }
}
print(fruitDict)
var fruitArrayNoDups = [String]()
for (key, value) in fruitDict {
    fruitArrayNoDups.append(key)
}
print(fruitArrayNoDups)
```

2. **Given a String, find the most frequently occurring letter**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output: `t`
```
var strFrequency = "Never trust a computer you can't throw out a window ~ Steve Wozniak"

var refactoredString = strFrequency.lowercased().replacingOccurrences(of: " ", with: "")
var charDict = [Character: Int]()
for char in refactoredString {
    if let value = charDict[char] {
        charDict[char] = value + 1
    } else {
        charDict[char] = 1
    }
}
print(charDict)

var mostFrequentLetter = ""
var mostTimes = 0
for (key, value) in charDict {
    if value > mostTimes {
        mostFrequentLetter = key.description
        mostTimes = value
    }
}
print(mostFrequentLetter)
```

3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**

Input: `[1,1,2,3,3,3,4,5,6,6,7]`

Output: `[1,3,6]`
```
var arrayOfNumbers = [1,1,2,3,3,3,4,5,6,6,7]
var dictOfNums = [Int: Int]()
for num in arrayOfNumbers {
    if let value = dictOfNums[num] {
        dictOfNums[num] = value + 1
    } else {
        dictOfNums[num] = 1
    }
}
var arrayOfFrequentNums = [Int]()
for (key, value) in dictOfNums {
    if value >= 2 {
        arrayOfFrequentNums.append(key)
    }
}
print(arrayOfFrequentNums)
```

4. **Given a String, find the second most frequently occurring letter in a string**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output `o`
```
var refactoredString = strFrequency.lowercased().replacingOccurrences(of: " ", with: "")
var charDict = [Character: Int]()
for char in refactoredString {
    if let value = charDict[char] {
        charDict[char] = value + 1
    } else {
        charDict[char] = 1
    }
}
print(charDict)

var mostFrequentLetter = ""
var mostTimes = 0
for (key, value) in charDict {
    if value > mostTimes {
        mostFrequentLetter = key.description
        mostTimes = value
    }
}
print(mostFrequentLetter)

var secondMostTimes = 0
var secondMostFrequentLetter = ""
for (key, value) in charDict {
    if value < mostTimes && value > secondMostTimes {
        secondMostFrequentLetter = key.description
        secondMostTimes = value
    }
}
print(secondMostFrequentLetter
```

## Closures

1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`
```
var arrayOfWords = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
arrayOfWords.sort { (str1, str2) -> Bool in
    str1 < str2
}
print(arrayOfWords)
```

2. **Given an array of type [String], return an array that contains the Strings sorted by length**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`
```
arrayOfWords.sort { (str1, str2) -> Bool in
    str1.count < str2.count
}
print(arrayOfWords)
```
3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`
```
var wordsFourOrMore = arrayOfWords.filter { (str) -> Bool in
    str.count >= 4
}
print(wordsFourOrMore)
```

4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `Never trust a computer you can't throw out a window`
```
var oneString = arrayOfWords.reduce("", { $0 + " " + $1})
print(oneString)
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
```
func evenOrOdd(arr:[Int],type: NumberType) -> [Int] {
    switch type {
    case .even:
     return arr.filter( {$0 % 2 == 0} )
        
    case .odd:
      return arr.filter( {$0 % 2 == 1})
    }
}
print(evenOrOdd(arr: [1,2,3,4,5,6], type: NumberType.odd))
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
