//
//  QuestionProvider.swift
//  EnhanceQuizStarter
//
//  Created by Andrew Graves on 5/1/19.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import GameKit

// this is the structure for the questions
struct Question {
    let question: String
    let possibleAnswers: [String]
    let correctAnswer: Int
    
    //TODO ADD AN INTERNAL FUNCTION TO CHECK FOR CORRECT ANSWERS
    func isCorrect(input: String) -> [Bool: String] {
        if input == possibleAnswers[correctAnswer] {
            return [true: ""]
        } else {
            return [false: possibleAnswers[correctAnswer]]
        }
    }
}

// Structure for storing and returning random questions
struct QuestionProvider {
    // question collection using the Question Struct
    let questions = [
        Question(question: "This was the only US President to serve more than two consecutive terms."    , possibleAnswers: ["George Washington", "Woodrow Wilson", "Andrew Jackson", "Franklin D. Roosevelt"], correctAnswer: 4),
        Question(question: "Which of the following countries has the most residents?", possibleAnswers: ["Nigeria","Russia","Iran","Vietnam"], correctAnswer: 1),
        Question(question: "In what year was the United Nations founded?", possibleAnswers: ["1918","1919","1945","1954"], correctAnswer: 3),
        Question(question: "The Titanic departed from the United Kingdom, where was it supposed to arrive?", possibleAnswers: ["Paris","Washington D.C.","New York City","Boston"], correctAnswer: 3),
        Question(question: "Which nation produces the most oil?", possibleAnswers: ["Iran","Iraq","Brazil","Canada"], correctAnswer: 4),
        Question(question: "Which country has most recently won consecutive World Cups in Soccer?", possibleAnswers: ["Italy","Brazil","Argetina","Spain"], correctAnswer: 2),
        Question(question: "Which of the following rivers is longest?", possibleAnswers: ["Yangtze","Mississippi","Congo","Mekong"], correctAnswer: 2),
        Question(question: "Which city is the oldest", possibleAnswers: ["Mexico City","Cape Town","San Jose","Sydney"], correctAnswer: 1),
        Question(question: "Which country was the first to allow women to vote in national elections?", possibleAnswers: ["Poland","United States","Sweden","Sengal"], correctAnswer: 1),
        Question(question: "Which of these countries won the most medals in the 2012 Summer Games?", possibleAnswers: ["France","Germany","Japan","Great Britan"], correctAnswer: 4)
    ]
    
    // Returns a random question when called
    func getRandomQuestion() -> Question {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        return questions[randomNumber]
    }
}

//Which of these countries won the most medals in the 2012 Summer Games?    France    Germany    Japan    Great Britian    4
