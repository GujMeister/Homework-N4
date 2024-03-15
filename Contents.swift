import UIKit

// 1. while ციკლის გამოყენებით, 1-დან 30-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.

var turnCounter = 0
var multiplesOfOddNumbers = 1

while turnCounter <= 30 {
    if turnCounter % 2 != 0 {
        multiplesOfOddNumbers *= turnCounter
    }
    turnCounter += 1
}

print(multiplesOfOddNumbers)

// 2. შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”

var emordnilapWord = "stressed"
var reversedWord = ""
for character in emordnilapWord {
    reversedWord = String(character) + reversedWord
}
print(reversedWord)

// 3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."

//var trafficLightColors = 0
//while true {
//    switch trafficLightColors % 3 {
//    case 0:
//        print("🔴")
//    case 1:
//        print("🌕")
//    case 2:
//        print("🟢")
//    default:
//        break
//    }
//    trafficLightColors += 1
//}

// 4. Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”

//var totalNumberOfTickets = 100
//
//while totalNumberOfTickets >= 0 {
//    switch totalNumberOfTickets {
//    case 1...100:
//        print("დარჩენილია მხოლოდ \(totalNumberOfTickets) რაოდენობა")
//    case 0:
//        print("ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე")
//    default:
//        print("ამ საიტზე ტეილოს სვიფტის ბილეთები არ გაიყიდება!")
//    }
//    totalNumberOfTickets -= 1
//}

// 5.შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)

var sameOrDifferent = [1,2,15,18,1]

var hasDuplicates = Set(sameOrDifferent).count != sameOrDifferent.count

if hasDuplicates == true {
    print("array შეიცავს მსგავს ელემენტებს")
} else {
    print("array-ში ყველა ელემენტი განსხვავებულია")
}

//MARK: თუ Set(sameOrDifferent)-ს გამოყენება cheating არის მაგ შემთხვევაში ქვევით მოცემული იყოს პასუხი

var hasDuplicatesBool = false

for index in 0..<sameOrDifferent.count {
    for iteration in index + 1..<sameOrDifferent.count {
        if sameOrDifferent[index] == sameOrDifferent[iteration] {
            hasDuplicatesBool = true
            break
        }
        if hasDuplicatesBool {
            break
        }
    }
}

if hasDuplicatesBool {
    print("array შეიცავს მსგავს ელემენტებს")
} else {
    print("array-ში ყველა ელემენტი განსხვავებულია")
}

// 6. დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას

let difference: (Int, Int) -> Int = { firstNumber, secondNumber in
    firstNumber - secondNumber
}
difference(10, 7)

// 7. დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.

func countConsonants(in word: String) -> Int {
    let consonants = "bcdfghjklmnpqrstvwxyz" + "BCDFGHJKLMNPQRSTVWXYZ"
    var consonantsCount = 0
    for character in word {
        if consonants.contains(character) {
            consonantsCount += 1
        }
    }
    return consonantsCount
}

print(countConsonants(in: "Chemi azrit am winadadebas aqvs 48 tanxmovani, aba vnaxot ramdeni tanxmovani aqvs sinamdvileshi"))
