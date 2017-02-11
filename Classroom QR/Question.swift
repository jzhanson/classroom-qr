//
//  Question.swift
//  Classroom QR
//
//  Created by Jennifer Lee on 2/11/17.
//  Copyright © 2017 Josh Zhanson. All rights reserved.
//

import Foundation
import UIKit

class Question {
    
    var question = ""
    var solution = ""
    var studentAnswers = [String : String]()

    init (inquiry : String) {
        self.question = inquiry
    }
    
    func addSolution(sol : String) {
        solution = sol
    }
    
    func addStudentAnswers (child : String, answer : String) {
        studentAnswers[child] = answer
    }
    
    func sweep(sweepResult : Set<String>) {
        let bob = Student(firstName: "Bob")
        let fatigue = Student(firstName: "La Fatigue.")
        let testtwo = Student(firstName : "Test T")
        let test = Student(firstName: "Test")
    
        let listOfStudents = [bob, fatigue, testtwo, test]
        for student in listOfStudents {
            student.addStudentAnswer(questionNum : 1, sweepSet : sweepResult)//persistData.input)
            print(student.name)
            print(student.history)
        }
    }
}

