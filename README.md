## Mid Unit-1 Review


## Strings

1. **Given a String, return a String with each letter uppercased**

Input: `Hello, there`

Output: `HELLO, THERE`

```
Question String #1 Answer

var inputString = "Hello there"
var outputString: String = ""

for char in inputString{
    outputString.append(char.uppercased())
}

print(outputString)
```

2. **Given a String, return a String alternating between uppercase and lowercase letters**


Input: `Hello, there`

Output: `HeLlO, tHeRe`

```
Question String #2 Answer

var inputString = "Hello, there"
var outputString: String = ""
var counter = 2

for char in inputString{
if char.isLetter && counter % 2 == 0{
        outputString.append(char.uppercased())
        counter += 1
    } else if char.isLetter && counter % 2  == 1 {
        outputString.append(char.lowercased())
        counter += 1
    }
    else {
        outputString.append(char)
    }
}


```


3. **Given a String, return a String with all occurrences of a given letter removed**

Input: `Hello, there`

Output: `Hllo, thr`

```
Question String #3 Answer

var inputString = "Hello there"
var outputString: String = ""
var targetLetter: Character

for i in inputString{
    if i.lowercased() == targetLetter.lowercased(){
        continue
    }
    outputString.append(i)
}

print(outputString)
```

## Arrays


1. **Given an array of type [Int], return the largest element**

Input: `[1,5,2,4,1,4]`

Output: `5`

```
Question Array #1 Answer

var inputArray = [1, 5, 2, 4, 1, 4]
var output = 0

output = inputArray.reduce(0){(x: Int, y: Int) in
    if x > y{
        return x
    }else {
        return y
    }
}

```

2. **Given an array of type [Int], return the smallest element**

Input: `[1,5,2,4,1,4]`

Output: `1`

```
Question Array #2 Answer

var inputArray = [1, 5, 2, 4, 1, 4]
var output = 0

output = inputArray.reduce(inputArray[0]){(x: Int, y: Int) in
    if x < y{
        return x
    }else {
        return y
    }
}

```

3. **Given an array of type [Int], return its sum**

Input: `[1,5,2,4,1,4]`

Output: `17`

```
Question Array #3 Answer

var inputArray = [1,5,2,4,1,4]
var output = inputArray.reduce(0){ (x: Int, y: Int) in 
    return x + y
}

```

4. **Given an array of type [Double], return its average**

Input: `[3,4.5,7.5,2,1]`

Output: `3.6`

```
Question Array #4 Answer

var inputArray = [3, 4.5, 7.5, 2, 1]
var output = inputArray.reduce(0){ (x: Double, y: Double) in 
    return x + y
}
output = output / Double(inputArray.count)
```

5. **Given an array of type [Double] and a Double, return the sum of all numbers in the array greater than a given number**

Input: `[3,4.5,7.5,2,1], 3`

Output: `12`

```
Question Array #5 Answer

var inputArray = [3, 4.5, 7.5, 2, 1]
var givenNumber: Double = 3
var output = inputArray.reduce(0){ (x: Double, y: Double) in 
    if y > givenNumber{
        return x + y
    }else {
        return x
    }
}

```

6. **Given an array of type [Double], return the product of all the elements**

Input: `[3,4.5,7.5,2,1]`

Output: `202.5`

```
Question Array #6 Answer

var inputArray = [3, 4.5, 7.5, 2, 1]
var output = inputArray.reduce(1){ (x: Double, y: Double) in 
    return x * y
}
```

7. **Given an array of type [Int], return the second smallest value in the array**

Input: `[3,6,1,9,4,8]`

Output: `3`

```
Question Array #7 Answer

var inputArray = [3, 6, 1, 9, 4, 8]
if inputArray.count == 1{
print("The second largest element is \(inputArray[0]).")
}

if inputArray.count == 2{
if inputArray[0] > inputArray[1]{
print("The second largest element in the array is \(inputArray[1]).")
} else {
print("The second largest element in the array is \(inputArray[0]).")
}
}
if inputArray.count > 2{
var largestElement = inputArray[0]
var secondLargestElement = inputArray[1]

for number in inputArray{
if number > largestElement{
    secondLargestElement = largestElement
    largestElement = number
    }else if  number > secondLargestElement{
    secondLargestElement = number
}
}
}


```

## Optionals

1. **Given an array of type [String?] return an array of [String] removing all nil values**

Input: `[nil, "We", "come", nil, "in", "peace"]`

Output: `["We", "come", "in", "peace"]`

```
Question #1 Optionals

var inputArray = [nil, "We", "come", nil, "in", "peace"]
var outputArray: [String] = []

for input in inputArray{
    if let inp = input{
        outputArray.append(inp)
    }
}

```

2. **Given an array of type [String?]? return an array of [String] removing all nil values**

Input: `nil`

Output: `[]`

```
Question #2 Optionals

var inputArray: [String?]? = nil
var outputArray: [String] = []

for input in inputArray ?? []{
if let unwrappedInput = input{
outputArray.append(unwrappedInput)
}
}
```

3. **Given an array of type [Int?] return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `[4, nil, 9, 5, nil]`

Output: `18`

```
Question #3 Optionals

var inputArray = [4, nil, 9, 5, nil]
var output = 0

for input in inputArray{
    guard let unwrappedInput = input else{
        continue
    }
    output += unwrappedInput
}

```

4. **Given an array of type [Int?]? return the sum of all non-nil values.  Use guard statements in your solution.**

Input: `nil`

Output: `0`

```
Question #4 Optionals

var inputArray: [Int?]? = nil
var output = 0

for input in inputArray ?? [] {
    guard let unwrappedInt = input else {
        continue
    }
    output += unwrappedInt
}
```

5. **Given an array of type [Int?] and an optional Int, return the sum of all values not equal to the given number.  If the given number is nil, return the sum of all non-nil values.**

Input: `[1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3], 1`

Output: `24`

```
Question #5 Optionals

var inputArray = [1, 1, nil, 3, 5, nil, 1, nil, 3, 5, nil, 5, nil, 3]
var optionalInteger: Int? = 1
var sum = 0

for input in inputArray{
    guard let unwrappedInt = input else {
        continue
    }
    
    if let unwrapped = optionalInteger{
        if unwrappedInt != unwrapped{
            sum += unwrappedInt
        }
    }
}


```


## Dictionaries

1. **Given an array of type [String], return a copy of the array with all duplicate values removed**

Input: `["apple", "apple", "banana", "banana", "banana", "cake", "cake"]`

Output: `["apple", "banana", "cake"]`

```
Question #1 Dictionaries

var inputArray = ["apple", "apple", "banana", "banana", "banana", "cake", "cake"]
var outputArray: [String] = []
var strSet: Set<String> = []

for input in inputArray{
    if !strSet.contains(input){
        strSet.insert(input)
        outputArray.append(input)
    }
}

```

2. **Given a String, find the most frequently occurring letter**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output: `t`

```
Question #2 Answer Dictionaries

var inputString = "Never trust a computer you can't throw out a window ~ Steve Wozniak"
var occurrenceDict: [String: Int] = [:]
var largestKey = ""
var largestValue = 0

for input in inputString{
if let unwrappedValue = occurrenceDict[String(input)] {
    if input.isLetter{
           occurrenceDict[String(input)]! += 1
    }
    }else if input.isLetter{
    occurrenceDict[String(input.lowercased())] = 0
}
}

for (key,value) in occurrenceDict{
if value > largestValue{
    largestValue = value
    largestKey = String(key)
}
}

```

3. **Given an array of type [Int], return a copy of the array that contains only elements that appear at least twice**

Input: `[1,1,2,3,3,3,4,5,6,6,7]`

Output: `[1,3,6]`

```
Question #3 Dictionaries

var inputArray = [1,1,2,3,3,3,4,5,6,6,7]
var outputArray: [Int] = []
var intDict: [Int:Int] = [:]

for input in inputArray{
    if let unwrappedInput = intDict[input]{
        intDict[input] = unwrappedInput + 1
    } else {
       intDict[input] = 1 
    }
}

for (key,value) in intDict{
    if value >= 2 {
        outputArray.append(key)
    }
}

print(outputArray)
```

4. **Given a String, find the second most frequently occurring letter in a string**

Input: `Never trust a computer you can't throw out a window ~ Steve Wozniak`

Output `o`

```
Question #4 Dictionaries

var occurrenceDictionary: [String:Int] = [:]
var secondFrequent: (String, Int) = ("",0)
var mostFrequent: (String, Int) = ("",0)
var inputString = "Never trust a computer you can't throw out a window ~ Steve Wozniak"

for input in inputString{
    if let unwrappedInput =  occurrenceDictionary[String(input)]{
        if input.isLetter{
            occurrenceDictionary[String(input)] = unwrappedInput + 1
        }
    } else {
        occurrenceDictionary[String(input)] = 0
    }
}

for (key,value) in occurrenceDictionary{
    if value > mostFrequent.1 {
        secondFrequent = (mostFrequent.0, mostFrequent.1)
        mostFrequent = (key, value)
        } else if value > secondFrequent.1{
            secondFrequent = (key,value)
        }
}

```
## Closures

1. **Given an array of type [String], return an array that contains the Strings sorted alphabetically with capital letters first (Swift will do that part automatically)**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "a", "a", "can\'t", "computer", "out", "throw", "trust", "window", "you"]`

```
Question #1 Answer Closures

var inputArray = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
var sortedArray: [String] = inputArray.sorted(){$0 < $1 }

```

2. **Given an array of type [String], return an array that contains the Strings sorted by length**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["a", "a", "you", "out", "Never", "trust", "can\'t", "throw", "window", "computer"]`

```
Question #2 Answer Closures

var inputArray = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
var sortedArray: [String] = inputArray.sorted(){$0.count < $1.count }

```

3. **Given an array of type [String], return an array containing all Strings at least 4 characters long**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `["Never", "trust", "computer", "can\'t", "throw", "window"]`

```
Question #3 Answer Closures

var inputArray = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
var sortedArray: [String] = inputArray.filter{$0.count >= 4}

```

4. **Given an array of type [String], return a String containing all of the Strings from the array combined and separated by spaces.  Do this first without using the `joined(separator:) method`**

Input: `["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]`

Output: `Never trust a computer you can't throw out a window`

```
Question #4 Answer Closures

var inputArray = ["Never", "trust", "a", "computer", "you", "can't", "throw", "out", "a", "window"]
var sortedArray: String = inputArray.reduce(""){ (x: String, y: String) in
    return x + " " + y
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

```
Question #1 Answer Enumerations

enum NumberType {
    case even
    case odd
}

var inputArray = [1,2,3,4,5,6]
var outputArray: [Int] = []
var newNumType = NumberType.odd

switch newNumType{
case NumberType.even:
    for input in inputArray{
        if input % 2 == 0{
            outputArray.append(input)
        }
    }
case NumberType.odd:
     for input in inputArray{
           if input % 2 == 1{
               outputArray.append(input)
           }
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

```
Question #2 Answer Enumerations

enum StringType {
    case lowercase
    case uppercase
}

var inputString = "Design is not just what it looks like and feels like. Design is how it works"
var newStringType = StringType.lowercase
var outputString = ""

switch newStringType{
case StringType.uppercase:
    for input in inputString{
        if input.isLetter {
            outputString += String(input.uppercased())
        } else if input.isWhitespace {
            outputString += " "
        }
    }
case StringType.lowercase:
    for input in inputString{
        if input.isLetter {
            outputString += String(input.lowercased())
        } else if input.isWhitespace {
            outputString += " "
        }
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

```
Question #3 Answer Enumerations

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

var inputArray = [FileStatus.saved(numberOfVersions: 5), FileStatus.saved(numberOfVersions: 3), FileStatus.saved(numberOfVersions: 8), FileStatus.unsaved]
var minimumNumberOfSaves = 4
var outputArray: [FileStatus] = []

for input in inputArray{
    switch input{
        case FileStatus.unsaved:
            break
        case FileStatus.saved(let numberOfVersions):
            if numberOfVersions > minimumNumberOfSaves{
                outputArray.append(input)
            }
    }
}

```
