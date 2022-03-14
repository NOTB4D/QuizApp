//
//  QuestionsDTO.swift
//  QuizApp
//
//  Created by Eser Kucuker on 14.03.2022.
//

import Foundation

struct QuestionsDTO: Codable {
    var data:QuestionModel?
}

struct QuestionModel: Codable {
    var questions: [Questions]?
}
    
struct Questions: Codable {
    var correct_answer: String?
    var option_1: String?
    var option_2: String?
    var option_3: String?
    var option_4: String?
    var question: String?
}
