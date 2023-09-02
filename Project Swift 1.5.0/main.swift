//
//  main.swift
//  Project Swift 1.5.0
//
//  Created by Khristina Valevskaia on 15.05.2022.
//

import Foundation


struct Question {

    var question: String
    var param1: Int
    var param2: Int
}

struct Survey {

    var myQuestionsmyParams: [Question] = [.init(question: "How long do dogs live? ",                                 param1: 10, param2:  15),
                                           .init(question: "At what time in morning should take a dog for a walk? ", param1: 6, param2: 8),
                                           .init(question: "How many minutes need to walk with a dog in total per day? ", param1: 90, param2: 360),
                                           .init(question: "Up to how many months of age does the dog grow? ", param1: 30, param2: 36),
                                           .init(question: "From how old acceptable take a dog for a child? ", param1: 12, param2: 16)]

    var totalScore: [Int] = []

    var startTest = Question (question: "How many times a day minimum an adult dog needs to go to the toilet", param1: 3, param2: 4)

    mutating func runTest () {

        for yourInput in myQuestionsmyParams {

            print(yourInput.question)
            guard let input = readLine(),
                  let myinput = Int(input) else {

                  print("Invalid input ")
                  exit(1)
            }


            let wrong = "You are wrong! "
            let right = "You are right! "
            let result = "Your score + "

            if myinput < yourInput.param1 || myinput > yourInput.param2 {

                 let score = 0
                 print(result, score)
                 print(wrong)

            } else if myinput != 0 {

                 let score = 1
                 print(result, score)
                 print(right)
                 totalScore.append(1)

            } else {

                 print("Invalid input")

                 exit(2)
            }
        }
    }

    func printResult () {
    var finalScore = 0
    for Final in totalScore {
            finalScore += Final
        }

        switch finalScore {

            case 0...2:

            print("Your result is not too good. \(finalScore). Before you get a dog, you should learn a lot. ")

            case 3...4:

            print("Your result is pretty good. \(finalScore). A little more knowledge, and you will become a great owner for a dog! ")

            case 5...10:

            print("Your result is excellent! \(finalScore). You know a lot about dogs and are ready to become a responsible owner! ")

            default:

            print("Error. Take the test again")
        }
    }

    mutating func addQuestionData() {
        myQuestionsmyParams.append(startTest)

        }

}

var beganSurvey = Survey()

beganSurvey.addQuestionData()

beganSurvey.runTest()

beganSurvey.printResult()

