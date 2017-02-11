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
    var studentAnswers = [Student : String]()

    init (inquiry : String) {
        self.question = inquiry
    }
    
    func addSolution(sol : String) {
        solution = sol
    }
    
    func addStudentAnswers (child : Student, answer : String) {
        studentAnswers[child] = answer
    }
}

