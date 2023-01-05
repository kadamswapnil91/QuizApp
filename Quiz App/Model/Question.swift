//
//  Question.swift
//  Quiz App
//
//  Created by Swapnnil Kadam on 31/12/22.
//

import Foundation
struct Question {
    let text : String
    let answer: String
    
    init(q:String, a:String) {
        text = q
        answer = a
    }
}
