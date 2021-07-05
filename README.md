## Mid Unit-1 Review


## Strings

1. **Given a String, return a String with each letter uppercased**

Input: `Hello, there`

Output: `HELLO, THERE`

Answer: "Hello, there".uppercased ( ) 

2. **Given a String, return a String alternating between uppercase and lowercase letters**


Input: `Hello, there`

Output: `HeLlO, tHeRe`

```swift
var string = "Hello, there"
var counter = 0
var emptyString = ""
for letter in string {
    counter += 1
    if counter % 2 != 0 {
        emptyString += letter.uppercased()
    } else {
        emptyString += String(letter)
    }
}
print(emptyString)

```


3. **Given a String, return a String with all occurrences of a given letter removed**

Input: `Hello, there`

Output: `Hllo, thr`

```swift 

var hello = "Hello, there"
func letterRemoval (_ input: Character, _ string: String) -> String {
    var newString = ""
for letter in string {
    if letter != input {
        newString.append(letter)
    }
}
    return newString
}

// example: print(letterRemoval("e", string))


```


## Arrays


1. **Given an array of type [Int], return the largest element**

Input: `[1,5,2,4,1,4]`

Output: `5`

```swift 

var array = [1,5,2,4,1,4]
print(array.max() ?? 0)

// or

var largest = array[0]
for num in array {
    if num > highest {
        largest = num
    }
}
print(largest)

```

2. **Given an array of type [Int], return the smallest element**

Input: `[1,5,2,4,1,4]`

Output: `1`

```swift
var array = [1,5,2,4,1,4]
print(array.min() ?? 0)

//or 

var smallest = array[0]
for num in array {
    if num < smallest {
    smallest = num
}
}

print(smallest)

```

3. **Given an array of type [Int], return its sum**

Input: `[1,5,2,4,1,4]`

Output: `17`

```swift

var sum = 0

for num in array {
    sum += num
}

print(sum)

```

4. **Given an array of type [Double], return its average**

Input: `[3,4.5,7.5,2,1]`

```swift

var array: [Double] = [3,4.5,7.5,2,1]
var sum = 0.0
for num in array {
    sum += num
}

var average = sum / Double(array.count)
print(average)

```

Output: `3.6`

5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**

Input: `[3,4.5,7.5,2,1], 3`

Output: `12`

```swift
func greaterThan (_ input: Double, _ array: [Double]) -> Double {
    var sum = 0.0
    for num in array {
        if num > input {
            sum += num
        }
    }
    return sum
}
```


6. **Given an array of type [Double], return the product of all the elements**

Input: `[3,4.5,7.5,2,1]`

Output: `202.5`

```swift
var array = [3,4.5,7.5,2,1]
var product = 1.0
for num in array {
    product = num * product
}
print(product)
```

7. **Given an array of type [Int], return the second smallest value in the array**

Input: `[3,6,1,9,4,8]`

```swift
var array = [3,6,1,9,4,8]
print(array.sorted()[1])


```

Output: `3`

## Optionals

1. **Given an array of type [String?] return an array of [String] removing all nil values**

Input: `[nil, "We", "come", nil, "in", "peace"]`

Output: `["We", "come", "in", "peace"]`

```swift

//Answer:

let array = [nil, "We", "come", nil, "in", "peace"]
print(array.compactMap{ $0 })

```

2. **Given an array of type [String?]? return an array of [String] removing all nil values**

Input: `nil`

Output: `[]`

```swift

//Answer:

func arrayConverter(array: [String?]?) -> [String] {
    guard let trueArray = array else {
        return []
    }
    return trueArray.compactMap{ $0 }
}


```

3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `[4, nil, 9, 5, nil]`

Output: `18`

```swift

func sumOfNotNil (array: [Int?]) -> Int {
    var sum = 0
    for num in array {
        guard let intNum = num else {
            continue
        }
        sum += intNum
    }
    return sum
}



```

4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `nil`

Output: `0`

```swift

func sumOfNotNil (array: [Int?]?) -> Int {
    var sum = 0
    guard let intArray = array else {
        return 0
    }
    for num in intArray {
        guard let intNum = num else {
            continue
        }
        sum += intNum
    }
    return sum
}


```

5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**

Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`

Output: `24`

```swift

//Answer:

func sumOfNotNil (array: [Int?], input: Int?) -> Int {
    var sum = 0
    guard let inputInt = input else {
        for num in array {
            guard let numInt = num else {
                continue
            }
            sum += numInt
        }
        return sum
    }
    let intArray = array.compactMap{ $0 }
    for num in intArray {
        if num != input {
            sum += num
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

func noRepeats (array: [String]) -> [String] {
    let set = Set(array)
    return Array(set)
}



```

2. **Given a String, find the most frequently occurring letter**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output: `t`

```swift

//Answer:

func mostRepeatedLetter (string: String) -> Character {
    var freqDict = [Character:Int]()
    var mostFreqChar = Character(" ")
    var highestFreqCount = 0
    let words = string.components(separatedBy: CharacterSet.punctuationCharacters)
    var newString = ""
    for word in words {
        newString += word
    }
    for char in string {
        if char == " " {
            continue
        }
        if var charFreq = freqDict[char] {
            freqDict[char] = charFreq + 1
            charFreq += 1
            if charFreq > highestFreqCount {
                highestFreqCount = charFreq
                mostFreqChar = char
            }
        } else {
            freqDict[char] = 1
        }
    }
    return mostFreqChar
}


```

3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**

Input: `[1,1,2,3,3,3,4,5,6,6,7]`

Output: `[1,3,6]`

```swift

//Answer:

func atLeastTwice(array: [Int]) -> [Int] {
    var freqDict = [Int:Int]()
    var atLeastTwiceArray = [Int]()
    for num in array {
        if var numFreq = freqDict[num] {
            freqDict[num] = numFreq + 1
            numFreq += 1
            if numFreq >= 2 && !atLeastTwiceArray.contains(num) {
                atLeastTwiceArray.append(num)
            }
        } else {
            freqDict[num] = 1
        }
    }
    return atLeastTwiceArray
}



```

4. **Given a String, find the second most frequently occurring letter in a string**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output `o`

```swift

//Answer:

func secondFreqLetter (string: String) -> Character {
    var freqDict = [Character:Int]()
    var secondFreqChar: Character = string.first ?? "a"
    var highestFreqCount = 0
    var secondFreqCount = 0
    let words = string.components(separatedBy: CharacterSet.punctuationCharacters)
    var newString = ""
    for word in words {
        newString += word
    }
    for char in string {
        if char == " " {
            continue
        }
        if var charFreq = freqDict[char] {
            freqDict[char] = charFreq + 1
            charFreq += 1
            if charFreq > highestFreqCount{
                highestFreqCount = charFreq
            } else if charFreq < highestFreqCount && charFreq > secondFreqCount {
                secondFreqCount = charFreq
                secondFreqChar = char
            }
        } else {
            freqDict[char] = 1
        }
    }
    return secondFreqChar
}


```


## Closures

1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`

```swift

//Answer:

func wordSorter (array: [String]) -> [String] {
    return array.sorted{ ($0.first ?? "a") < ($1.first ?? "a")}
}

```
2. **Given an array of type [String], return an array that contains the Strings sorted by length**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`

```swift 

//Answer:

func lengthSorter (array: [String]) -> [String] {
    return array.sorted{ $0.count < $1.count }
    
}

```

3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`

```swift

//Answer:

func lengthFilter (array: [String]) -> [String] {
    return array.filter{ $0.count >= 4 }
    
}


```

4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `Never trust a computer you can't throw out a window`

```swift


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
// Answer:

func returnEvensOrOdds(array: [Int], input: NumberType) -> [Int] {
    var oddArray = [Int]()
    switch input {
    case .even:
        for num in array {
            if num % 2 == 0 {
                oddArray.append(num)
            }
        }
    case .odd:
        for num in array {
            if num % 2 != 0 {
                oddArray.append(num)
            }
        }
    }
    return oddArray
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

//Answer:
func returnLowercasedorUppercased(string: String, input: StringType) -> String {
    switch input {
    case .lowercase:
        return string.lowercased()
    case.uppercase:
        return string.uppercased()
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

//Answer: 

func fileStatusConverter (array: [FileStatus], version count: Int) -> [FileStatus] {
    var convertedArray = [FileStatus]()
    for item in array {
        switch item {
        case .saved:
            let itemComponents = item.description.components(separatedBy: " ")
            if (Int(itemComponents[5]) ?? (count - 1)) > count {
                convertedArray.append(item)
            }
        default:
            break
        }
    }
    return convertedArray
}

```
