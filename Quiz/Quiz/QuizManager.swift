//
//  QuizManager.swift
//  Quiz
//
//  Created by spark-05 on 2024/05/09.
//

import UIKit

class QuizManager {
    var quizzes: [Quiz]
    var currentIndex: Int
    var score: Int
    
    enum Status {
        case inAnsewr
        case done
    }
    var status: Status
    init() {
        quizzes = []
        quizzes.append(Quiz(text: "人間を超でっかいネコだと思っている？",correctAnswer: true, imageName:"cat"))
        quizzes.append(Quiz(text: "イヌは食べ物のおいしさを味よりも匂いで判断している？",correctAnswer: true, imageName: "dog"))
        quizzes.append(Quiz(text: "虎のしましま模様は皮膚までつながっていない？", correctAnswer: true, imageName: "tiger"))
        quizzes.append(Quiz(text: "クマは走る時に全部の足がバラバラにうごいてる？", correctAnswer: true, imageName: "bear"))
        quizzes.append(Quiz(text: "パンダのいちばんの好物は笹である？", correctAnswer: true, imageName: "panda"))
        quizzes.append(Quiz(text: "パンダは白黒である？", correctAnswer: true, imageName: "panda"))
        quizzes.append(Quiz(text: "イヌは４足歩行である？", correctAnswer: true, imageName: "dog"))

        currentIndex = 0
        score = 0
        status = .inAnsewr
    }
    
    var currentQuiz: Quiz {
        get {
            return self.quizzes[currentIndex]
        }
    }
    func answerQuiz(answer: Bool) {
        if self.currentQuiz.correctAnswer == answer {
            score += 1
        }
    }
    
    func nextQuiz(){
        if currentIndex < quizzes.count - 1 {
            currentIndex += 1
        } else{
            status = .done
        }
        
    }
    
  
    
    
}
